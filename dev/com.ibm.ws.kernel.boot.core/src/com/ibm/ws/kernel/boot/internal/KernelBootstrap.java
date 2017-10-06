/*******************************************************************************
 * Copyright (c) 2013, 2016 IBM Corporation and others.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 *
 * Contributors:
 *     IBM Corporation - initial API and implementation
 *******************************************************************************/
package com.ibm.ws.kernel.boot.internal;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.lang.instrument.Instrumentation;
import java.lang.reflect.Field;
import java.net.MalformedURLException;
import java.net.URL;
import java.security.AccessController;
import java.security.Policy;
import java.security.PrivilegedAction;
import java.text.MessageFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CountDownLatch;

import com.ibm.ws.kernel.boot.BootstrapConfig;
import com.ibm.ws.kernel.boot.EmbeddedServerImpl;
import com.ibm.ws.kernel.boot.LaunchException;
import com.ibm.ws.kernel.boot.Launcher;
import com.ibm.ws.kernel.boot.ReturnCode;
import com.ibm.ws.kernel.boot.security.WLPDynamicPolicy;
import com.ibm.ws.kernel.internal.classloader.BootstrapChildFirstJarClassloader;
import com.ibm.ws.kernel.internal.classloader.BootstrapChildFirstURLClassloader;
import com.ibm.ws.kernel.productinfo.DuplicateProductInfoException;
import com.ibm.ws.kernel.productinfo.ProductInfo;
import com.ibm.ws.kernel.productinfo.ProductInfoParseException;
import com.ibm.ws.kernel.productinfo.ProductInfoReplaceException;
import com.ibm.ws.kernel.provisioning.NameBasedLocalBundleRepository;
import com.ibm.ws.kernel.provisioning.ServiceFingerprint;
import com.ibm.ws.kernel.provisioning.VersionUtility;
import com.ibm.ws.staticvalue.StaticValue;

/**
 * Bootstrap the runtime: Resolve the few jar files required to construct the nested
 * classloader requierd for launching the framework, use reflection to find
 * the LauncherDelegate, and invoke the LauncherDelegate in the nested classloader.
 * <p>
 * This is called by both the {@link Launcher} for normal command-line invocation,
 * and the {@link EmbeddedServerImpl} for embedded server launch.
 */
public class KernelBootstrap {

    /** Initial configuration and location manager */
    protected final BootstrapConfig bootProps;

    /** Lock ensuring only one VM is using the server directory/workarea (as a server) */
    protected final ServerLock serverLock;

    protected final CountDownLatch delegateCreated = new CountDownLatch(1);
    protected LauncherDelegate launcherDelegate;

    /** File used to determine if JVM exited gracefully or not */
    protected File serverRunning = null;

    protected final boolean libertyBoot;

    /**
     * @param bootProps BootstrapProperties carry forward all of the parameters and
     *            options used to launch the kernel.
     */
    public KernelBootstrap(BootstrapConfig bootProps) {
        this.bootProps = bootProps;
        libertyBoot = Boolean.parseBoolean(bootProps.get(BootstrapConstants.LIBERTY_BOOT_PROPERTY));
        if (libertyBoot) {
            StaticValue.setMultiplex();
        }

        // Use initialized bootstrap configuration to create the server lock.
        // This ensures the server and nested workarea directory exist and are writable
        serverLock = ServerLock.createServerLock(bootProps);
    }

    /**
     * Start the kernel:
     * <ul>
     * <li>establish appropriate mechanisms to mark the server as started,
     * <li>identify kernel resources and log providers
     * <li>create a special bootstrap classlaoder
     * <li>Create an appropriate LauncherDelegate
     * <li>Launch the OSGi framework via the LauncherDelegate
     */
    public ReturnCode go() {
        try {
            // obtaining a lock for the server (with timeout)
            serverLock.obtainServerLock();

            // IFF we can obtain the server lock....

            // Ensure that the server state directory has been cleared prior to start
            clearServerStateDir();

            setupJMXOverride();

            // Set default to not retry http post requests.  See java bug " JDK-6382788 : URLConnection is silently retrying POST request"
            setHttpRetryPost();

            // Only create resources (like the server dir) if the current return code is ok
            setLoggerProperties();

            // Create the server running marker file that is automatically deleted when JVM terminates normally
            // If the file already exists, it will force a clean start
            ServerLock.createServerRunningMarkerFile(bootProps);

            // Clear workarea if directed via properties or service
            cleanStart();

            // Read the bootstrap manifest (kernel, log provider, os extensions)
            BootstrapManifest bootManifest = null;
            try {
                bootManifest = BootstrapManifest.readBootstrapManifest(libertyBoot);
            } catch (IOException e) {
                throw new LaunchException("Could not read the jar manifest",
                                BootstrapConstants.messages.getString("error.unknown.kernel.version"), e);
            }

            // handle system packages & system.packages.extra -- MAY THROW if
            // required system.packages list can't be read from the jar
            bootManifest.prepSystemPackages(bootProps);

            // Get product version information & retrieve log provider
            String kernelVersion = BootstrapConstants.SERVER_NAME_PREFIX + bootManifest.getBundleVersion();
            String productInfo = getProductInfoDisplayName();

            // Find the bootstrap resources we need to launch the nested framework.
            // MAY THROW if these resources can not be found or read
            KernelResolver resolver = new KernelResolver(bootProps.getInstallRoot(),
                            bootProps.getWorkareaFile(KernelResolver.CACHE_FILE),
                            bootManifest.getKernelDefinition(bootProps),
                            bootManifest.getLogProviderDefinition(bootProps),
                            bootManifest.getOSExtensionDefinition(bootProps),
                            libertyBoot);

            // ISSUE LAUNCH FEEDBACK TO THE CONSOLE -- we've done the cursory validation at least.
            String logLevel = bootProps.get("com.ibm.ws.logging.console.log.level");
            boolean logVersionInfo = (logLevel == null || !logLevel.equalsIgnoreCase("off"));
            processVersion(bootProps, "info.serverLaunch", kernelVersion, productInfo, logVersionInfo);
            if (logVersionInfo) {
                List<String> cmdArgs = bootProps.getCmdArgs();
                if (cmdArgs != null && !cmdArgs.isEmpty()) {
                    System.out.println("\t" + MessageFormat.format(BootstrapConstants.messages.getString("info.cmdArgs"), cmdArgs));
                }
            }
            //now we have a resolver we should check if a clean start is being forced
            //if we already cleaned once because of the cmd line arg, osgi prop or service changes
            //then the resolver won't force us to clean again anyway
            if (resolver.getForceCleanStart())
                KernelUtils.cleanStart(bootProps.getWorkareaFile(null));

            //add the service fingerprint
            ServiceFingerprint.putInstallDir(null, bootProps.getInstallRoot());

            // Find additional/extra system packages from log providers and os extensions
            String packages = bootProps.get(BootstrapConstants.INITPROP_OSGI_EXTRA_PACKAGE);
            packages = resolver.appendExtraSystemPackages(packages);

            // save new "extra" packages
            if (packages != null)
                bootProps.put(BootstrapConstants.INITPROP_OSGI_EXTRA_PACKAGE, packages);

            // Create a new classloader with boot.jars on the classpath
            // Find the framework launcher, and invoke it
            ClassLoader loader;
            List<URL> urlList = new ArrayList<URL>();

            // for liberty boot all the jars are already on the classpath
            if (!libertyBoot) {
                // Add bootstrap jar(s)
                bootProps.addBootstrapJarURLs(urlList);

                // Add OSGi framework, log provider, and/or os extension "boot.jar" elements
                resolver.addBootJars(urlList);
            }
            // Build our new shiny nested classloader
            loader = buildClassLoader(urlList, bootProps.get("verifyJarSignature"));

            // Find LauncherDelegate, store the instance where we can find it (for server commands)
            try {
                Class<? extends LauncherDelegate> clazz = getLauncherDelegateClass(loader);
                launcherDelegate = clazz.getConstructor(BootstrapConfig.class).newInstance(bootProps);
            } catch (Exception e) {
                rethrowException("Unable to create OSGi framework due to " + e, e);
            }

            delegateCreated.countDown();

            // Pass some things along that the delegate in the nested classloader will need
            bootProps.setFrameworkClassloader(loader);
            bootProps.setKernelResolver(resolver);
            bootProps.setInstrumentation(getInstrumentation());

            if (!!!Boolean.parseBoolean(bootProps.get(BootstrapConstants.INTERNAL_START_SIMULATION))) {
                // GO!!! We won't come back from this call until the framework has stopped
                launcherDelegate.launchFramework();
            }
        } catch (LaunchException le) {
            // This is one of ours, already packaged correctly, just rethrow
            throw le;
        } catch (Throwable e) {
            rethrowException("Caught unexpected exception " + e, e);
        } finally {
            delegateCreated.countDown();
            if (serverLock != null) {
                serverLock.releaseServerLock();
            }
        }
        return ReturnCode.OK;
    }

    /**
     *
     */
    private void clearServerStateDir() {
        File stateDir = bootProps.getOutputFile("logs/state");
        KernelUtils.cleanDirectory(stateDir, "state");
    }

    /**
     * @param osRequest
     * @return
     * @throws FileNotFoundException
     * @throws IOException
     * @throws InterruptedException
     */
    public Set<String> getServerContent(String osRequest) throws FileNotFoundException, IOException, InterruptedException {
        delegateCreated.await();
        if (launcherDelegate != null)
            return launcherDelegate.queryFeatureInformation(osRequest);

        return Collections.emptySet();
    }

    /**
     * @param osRequest
     * @return
     * @throws FileNotFoundException
     * @throws IOException
     * @throws InterruptedException
     */
    public Set<String> getServerFeatures() throws InterruptedException {
        delegateCreated.await();
        if (launcherDelegate != null)
            return launcherDelegate.queryFeatureNames();

        return Collections.emptySet();
    }

    /**
     * @throws InterruptedException
     */
    public boolean waitForStarted() throws InterruptedException {
        delegateCreated.await();
        if (launcherDelegate != null)
            return launcherDelegate.waitForReady();

        return false;
    }

    /**
     * Stop the server. This emulates the path that the server stop action takes:
     * it calls shutdown on the LauncherDelegate, and then waits until it can obtain
     * the server lock to ensure the server has stopped.
     *
     * @throws InterruptedException
     */
    public ReturnCode shutdown() throws InterruptedException {
        delegateCreated.await();
        // If we have a delegate, call shutdown to stop the server
        if (launcherDelegate != null && launcherDelegate.shutdown()) {
            // if shutdown stopped the server, we need to wait until we can obtain
            // the server lock (the serverLock is released in the finally block of
            // the go() method.. )
            return serverLock.waitForStop();
        }

        // Server did not propertly start (no delegate), so stop is fine.
        return ReturnCode.OK;
    }

    /**
     * This sets up the system property which is consulted by
     * java.lang.management.ManagementFactory and javax.management.MBeanServerFactory.
     */
    protected void setupJMXOverride() {
        // This is normally done by the javaagent, but set it here in case the
        // javaagent was not used.
        System.setProperty("javax.management.builder.initial",
                           "com.ibm.ws.kernel.boot.jmx.internal.PlatformMBeanServerBuilder");
    }

    private void setLoggerProperties() {
        // This is normally done by the javaagent, but set it here in case the
        // javaagent was not used.

        // bootProps.get(..) checks initProps, then system props
        String logManager = bootProps.get("java.util.logging.manager");
        if (logManager == null)
            logManager = "com.ibm.ws.kernel.boot.logging.WsLogManager";

        // Set system props for j.u.l use.
        System.setProperty("java.util.logging.manager", logManager);
    }

    private void setHttpRetryPost() {
        // Set default to not retry http post requests.  See java bug " JDK-6382788 : URLConnection is silently retrying POST request"
        String httpRetryPost = bootProps.get("sun.net.http.retryPost");

        if (httpRetryPost == null)
            httpRetryPost = "false";

        // Set system props for http retryPost
        System.setProperty("sun.net.http.retryPost", httpRetryPost);
    }

    /**
     * Check for clean start: clear entire work area if set
     *
     * @param bootProps
     */
    protected void cleanStart() {
        File workareaFile = bootProps.getWorkareaFile(null);

        // If we're clean starting, remove all files from the working directory;
        // Note: do not reverse the checks in the following if(); we need to call hasServiceBeenApplied each time
        if (ServiceFingerprint.hasServiceBeenApplied(bootProps.getInstallRoot(), workareaFile) || bootProps.checkCleanStart()) {
            // Must clean the static data from the ServiceFinterprint class; otherwise the stale data will be persisted.
            ServiceFingerprint.clear();
            KernelUtils.cleanStart(workareaFile);

            // clean up / remove various "clean" parameters
            // storage area has already been wiped..
            bootProps.remove(BootstrapConstants.INITPROP_OSGI_CLEAN);
            bootProps.remove(BootstrapConstants.OSGI_CLEAN);

        }
    }

    /**
     * Trivial method: keep, as this is overridden for test.
     *
     * @return the launcher delegate class
     */
    protected Class<? extends LauncherDelegate> getLauncherDelegateClass(ClassLoader loader) throws ClassNotFoundException {
        String className = "com.ibm.ws.kernel.launch.internal.LauncherDelegateImpl";

        Class<?> clazz = loader.loadClass(className);
        if (clazz == null)
            throw new ClassNotFoundException(className);

        return clazz.asSubclass(LauncherDelegate.class);
    }

    /**
     * Build the nested classloader containing the OSGi framework, and the log provider.
     *
     * @param urlList
     * @param verifyJarProperty
     * @return
     */
    protected ClassLoader buildClassLoader(final List<URL> urlList, String verifyJarProperty) {
        if (libertyBoot) {
            // for liberty boot we just use the class loader that loaded this class
            return AccessController.doPrivileged(new PrivilegedAction<ClassLoader>() {
                @Override
                public ClassLoader run() {
                    return getClass().getClassLoader();
                }
            });
        }
        final boolean verifyJar;
        if (System.getSecurityManager() == null) {
            // do not perform verification if SecurityManager is not installed
            // unless explicitly enabled.
            verifyJar = "true".equalsIgnoreCase(verifyJarProperty);
        } else {
            // always perform verification if SecurityManager is installed.
            verifyJar = true;
        }

        enableJava2SecurityIfSet(this.bootProps, urlList);

        ClassLoader loader = AccessController.doPrivileged(new PrivilegedAction<ClassLoader>() {
            @Override
            public ClassLoader run() {
                ClassLoader parent = getClass().getClassLoader();
                URL[] urls = urlList.toArray(new URL[urlList.size()]);
                if (verifyJar) {
                    return new BootstrapChildFirstURLClassloader(urls, parent);
                } else {
                    try {
                        return new BootstrapChildFirstJarClassloader(urls, parent);
                    } catch (RuntimeException e) {
                        // fall back to URLClassLoader in case something went wrong
                        return new BootstrapChildFirstURLClassloader(urls, parent);
                    }
                }
            }
        });

        return loader;
    }

    /**
     * Set Java 2 Security if enabled
     */
    public static void enableJava2SecurityIfSet(BootstrapConfig bootProps, List<URL> urlList) {
        if (bootProps.get(BootstrapConstants.JAVA_2_SECURITY_PROPERTY) != null) {

            NameBasedLocalBundleRepository repo = new NameBasedLocalBundleRepository(bootProps.getInstallRoot());

            File bestMatchFile = repo.selectBundle("com.ibm.ws.org.eclipse.equinox.region",
                                                   VersionUtility.stringToVersionRange("[1.0,1.0.100)"));
            if (bestMatchFile == null) {
                throw new LaunchException("Could not find bundle for " + "com.ibm.ws.org.eclipse.equinox.region" + ".",
                                BootstrapConstants.messages.getString("error.missingBundleException"));
            } else {
                // Add to the list of boot jars...
                try {
                    urlList.add(bestMatchFile.toURI().toURL());
                } catch (MalformedURLException e) {
                    throw new LaunchException("Failure to set the default Security Manager due to exception ",
                                    BootstrapConstants.messages.getString("error.set.securitymanager"), e);
                }
            }

            Policy wlpPolicy = new WLPDynamicPolicy(Policy.getPolicy(), urlList);
            Policy.setPolicy(wlpPolicy);
        }

    }

    /**
     * Get the runtime build version based on the information in the manifest of the
     * kernel jar: this is not authoritative, as it won't include information about
     * applied iFixes, etc.
     */
    public static void showVersion(BootstrapConfig bootProps) {
        BootstrapManifest bootManifest;
        try {
            bootManifest = BootstrapManifest.readBootstrapManifest(Boolean.parseBoolean(bootProps.get(BootstrapConstants.LIBERTY_BOOT_PROPERTY)));
            String kernelVersion = bootManifest.getBundleVersion();
            String productInfo = getProductInfoDisplayName();

            processVersion(bootProps, "info.serverVersion", kernelVersion, productInfo, true);
        } catch (IOException e) {
            throw new LaunchException("Could not read the jar manifest",
                            BootstrapConstants.messages.getString("error.unknown.kernel.version"), e);
        }
    }

    private static void processVersion(BootstrapConfig bootProps, String msgKey, String kernelVersion, String productInfo, boolean printVersion) {
        // Two keys, mostly the same parameters (3rd is ignored in one case):
        // info.serverLaunch=Launching {3} ({0}) on {1}, version {2}
        // info.serverVersion={0} on {1}, version {2}
        // 0 : productInfo/wlp-version OR productInfo (wlp-version)
        // 1 : java.vm.name
        // 2 : java.runtime.version (maybe with locale)
        // 3 : serverName

        final String launchString;
        final String versionString;

        if (productInfo == null) {
            // RARE/CORNER-CASE: All bets are off, we don't have product info anyway... :(
            launchString = "WebSphere Application Server/" + kernelVersion;
            versionString = "WebSphere Application Server (" + kernelVersion + ")";
        } else {
            launchString = productInfo + "/" + kernelVersion;
            versionString = productInfo + " (" + kernelVersion + ")";
        }

        if (printVersion) {
            System.out.println(MessageFormat.format(BootstrapConstants.messages.getString(msgKey),
                                                    "info.serverLaunch".equals(msgKey) ? launchString : versionString,
                                                    System.getProperty("java.vm.name"),
                                                    System.getProperty("java.runtime.version") + " (" + Locale.getDefault() + ")",
                                                    bootProps.getProcessName()));
        }
        // Store the product version in the map for use by log providers
        bootProps.put(BootstrapConstants.BOOTPROP_PRODUCT_INFO, versionString);
    }

    /**
     * Return a display name for the currently running server.
     */
    protected static String getProductInfoDisplayName() {
        String result = null;
        try {
            Map<String, ProductInfo> products = ProductInfo.getAllProductInfo();
            StringBuilder builder = new StringBuilder();
            for (ProductInfo productInfo : products.values()) {
                if (builder.length() != 0) {
                    builder.append(", ");
                }
                builder.append(productInfo.getDisplayName());
            }
            result = builder.toString();
        } catch (ProductInfoParseException e) {
            // ignore exceptions-- best effort to get a pretty string
        } catch (DuplicateProductInfoException e) {
            // ignore exceptions-- best effort to get a pretty string
        } catch (ProductInfoReplaceException e) {
            // ignore exceptions-- best effort to get a pretty string
        }
        return result;
    }

    private void rethrowException(String untranslatedMsg, Throwable ex) {
        Throwable cause = ex.getCause();
        if (cause == null)
            cause = ex;
        throw new LaunchException(untranslatedMsg,
                        MessageFormat.format(BootstrapConstants.messages.getString("error.unknownException"), cause.toString()),
                        cause);
    }

    /**
     * Fetch the BootstrapAgent instrumentation instance from the BootstrapAgent
     * in the system classloader.
     *
     * @return Instrumentation instance initialized by the Launcher, may be
     *         null.
     */
    protected Instrumentation getInstrumentation() {
        ClassLoader cl = ClassLoader.getSystemClassLoader();
        Class<?> agentClass;
        try {
            agentClass = cl.loadClass("com.ibm.ws.kernel.instrument.BootstrapAgent");
            Field instField = agentClass.getDeclaredField("instrumentation");
            instField.setAccessible(true);
            return (Instrumentation) instField.get(null);
        } catch (Exception t) { /* Eat the issue and rely on users to report */
        }
        return null;
    }
}