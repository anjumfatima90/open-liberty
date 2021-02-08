#
#Mon Feb 08 16:22:51 CST 2021
symbolicName=io.openliberty.batchSecurity-2.0
visibility=private
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-App-ForceRestart=install, uninstall
IBM-Install-Policy=when-satisfied
kind=beta
WLP-Activation-Type=parallel
edition=base
-features=com.ibm.wsspi.appserver.webBundleSecurity-1.0,com.ibm.websphere.appserver.servlet-5.0
-bundles=com.ibm.ws.jbatch.security.jakarta
IBM-Provision-Capability=osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=io.openliberty.appSecurity-4.0))", osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=io.openliberty.batch-2.0))"
