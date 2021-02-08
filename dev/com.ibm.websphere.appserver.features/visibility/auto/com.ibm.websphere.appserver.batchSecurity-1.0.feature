#
#Mon Feb 08 16:22:51 CST 2021
symbolicName=com.ibm.websphere.appserver.batchSecurity-1.0
visibility=private
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-App-ForceRestart=install, uninstall
IBM-Install-Policy=when-satisfied
kind=ga
edition=base
-features=com.ibm.wsspi.appserver.webBundleSecurity-1.0,com.ibm.websphere.appserver.servlet-3.1;ibm.tolerates\:\="4.0"
-bundles=com.ibm.ws.jbatch.security
IBM-Provision-Capability=osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(|(osgi.identity\=com.ibm.websphere.appserver.appSecurity-2.0)(osgi.identity\=com.ibm.websphere.appserver.appSecurity-3.0)))", osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=com.ibm.websphere.appserver.batch-1.0))"
