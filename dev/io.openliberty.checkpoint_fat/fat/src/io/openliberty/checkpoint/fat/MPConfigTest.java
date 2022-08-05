/*******************************************************************************
 * Copyright (c) 2017, 2022 IBM Corporation and others.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 *
 * Contributors:
 *     IBM Corporation - initial API and implementation
 *******************************************************************************/
package io.openliberty.checkpoint.fat;

import static io.openliberty.checkpoint.fat.FATSuite.getTestMethod;
import static org.junit.Assert.assertNotNull;

import java.util.Iterator;

import org.junit.After;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.runner.RunWith;

import com.ibm.websphere.simplicity.ShrinkHelper;
import com.ibm.websphere.simplicity.config.ServerConfiguration;
import com.ibm.websphere.simplicity.config.Variable;
import com.ibm.websphere.simplicity.log.Log;

import componenttest.annotation.Server;
import componenttest.annotation.SkipIfCheckpointNotSupported;
import componenttest.annotation.TestServlet;
import componenttest.custom.junit.runner.FATRunner;
import componenttest.topology.impl.LibertyServer;
import componenttest.topology.utils.FATServletClient;
import io.openliberty.checkpoint.spi.CheckpointPhase;
import mpapp1.MPConfigServlet;

@RunWith(FATRunner.class)
@SkipIfCheckpointNotSupported
public class MPConfigTest extends FATServletClient {

    public static final String APP_NAME = "mpapp1";

    @Server("checkpointMPConfig")
    @TestServlet(servlet = MPConfigServlet.class, contextRoot = APP_NAME)
    public static LibertyServer server;

    @BeforeClass
    public static void copyAppToDropins() throws Exception {
        ShrinkHelper.defaultApp(server, APP_NAME, APP_NAME);
        FATSuite.copyAppsAppToDropins(server, APP_NAME);
    }

    @Before
    public void setUp() throws Exception {
        TestMethod testMethod = getTestMethod(TestMethod.class, testName);
        configureBeforeCheckpoint(testMethod);
        server.setCheckpoint(CheckpointPhase.APPLICATIONS, true,
                             server -> {
                                 assertNotNull("'SRVE0169I: Loading Web Module: " + APP_NAME + "' message not found in log before rerstore",
                                               server.waitForStringInLogUsingMark("SRVE0169I: .*" + APP_NAME, 0));
                                 assertNotNull("'CWWKZ0001I: Application " + APP_NAME + " started' message not found in log.",
                                               server.waitForStringInLogUsingMark("CWWKZ0001I: .*" + APP_NAME, 0));
                                 configureBeforeRestore(testMethod);
                             });
        server.startServer(getTestMethod(TestMethod.class, testName) + ".log");
    }

    private void configureBeforeCheckpoint(TestMethod testMethod) throws Exception {
        if (testMethod == TestMethod.envValueChangeTest || testMethod == TestMethod.appScopeEnvValueChangeTest) {
            try {
                server.copyFileToLibertyServerRoot("envValueTest/server.env");
            } catch (Exception e) {
                throw new AssertionError("Unexpected error configuring test.", e);
            }
        }
    }

    private void configureBeforeRestore(TestMethod testMethod) {
        ServerConfiguration config;
        try {
            server.saveServerConfiguration();
            Log.info(getClass(), testName.getMethodName(), "Configuring: " + testMethod);
            switch (testMethod) {
                case envValueTest:
                case appScopeEnvValueTest:
                case configObjectAppScopeEnvValueTest:
                    // environment value overrides defaultValue in restore
                    server.copyFileToLibertyServerRoot("envValueTest/server.env");
                    break;
                case serverValueTest:
                case appScopeServerValueTest:
                case configObjectAppScopeServerValueTest:
                    // change config of variable for restore
                    config = removeTestKeyVar(server.getServerConfiguration());
                    config.getVariables().add(new Variable("test_key", "serverValue"));
                    server.updateServerConfiguration(config);
                    break;
                case applicationScopedValueTest:
                    config = removeTestKeyVar(server.getServerConfiguration());
                    config.getVariables().add(new Variable("test_key", "applicationScopedValue"));
                    server.updateServerConfiguration(config);
                    break;
                case annoValueTest:
                case appScopeAnnoValueTest:
                case configObjectAppScopeAnnoValueTest:
                    // remove variable for restore, fall back to default value on annotation
                    server.updateServerConfiguration(removeTestKeyVar(server.getServerConfiguration()));
                    break;
                case envValueChangeTest:
                case appScopeEnvValueChangeTest:
                case configObjectAppScopeEnvValueChangeTest:
                    server.copyFileToLibertyServerRoot("envValueChangeTest/server.env");
                    break;
                case defaultValueTest:
                case appScopeDefaultValueTest:
                case configObjectAppScopeDefaultValueTest:
                    // Just fall through and do the default (no configuration change)
                    // should use the defaultValue from server.xml
                default:
                    Log.info(getClass(), testName.getMethodName(), "No configuration required: " + testMethod);
                    break;
            }

        } catch (Exception e) {
            throw new AssertionError("Unexpected error configuring test.", e);
        }
    }

    private ServerConfiguration removeTestKeyVar(ServerConfiguration config) {
        for (Iterator<Variable> iVars = config.getVariables().iterator(); iVars.hasNext();) {
            Variable var = iVars.next();
            if (var.getName().equals("test_key")) {
                iVars.remove();
            }
        }
        return config;
    }

    @After
    public void tearDown() throws Exception {
        server.stopServer("CWWKC0651W");
        server.restoreServerConfiguration();
        server.deleteFileFromLibertyServerRoot("server.env");
    }

    static enum TestMethod {
        envValueTest,
        envValueChangeTest,
        serverValueTest,
        annoValueTest,
        defaultValueTest,
        appScopeEnvValueTest,
        appScopeEnvValueChangeTest,
        appScopeServerValueTest,
        appScopeAnnoValueTest,
        appScopeDefaultValueTest,
        applicationScopedValueTest,
        configObjectAppScopeEnvValueTest,
        configObjectAppScopeEnvValueChangeTest,
        configObjectAppScopeServerValueTest,
        configObjectAppScopeAnnoValueTest,
        configObjectAppScopeDefaultValueTest,
        unknown
    }
}
