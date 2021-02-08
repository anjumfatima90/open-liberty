#
#Mon Feb 08 16:22:51 CST 2021
symbolicName=com.ibm.websphere.appserver.sip.security-1.0
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-App-ForceRestart=install, uninstall
IBM-Install-Policy=when-satisfied
kind=ga
IBM-API-Package=com.ibm.wsspi.security.tai.extension; type\="ibm-api", com.ibm.websphere.security.tai.extension; type\="ibm-api"
edition=base
-bundles=com.ibm.ws.sipcontainer.security, com.ibm.ws.security.authentication.tai
-files=dev/api/ibm/javadoc/com.ibm.websphere.appserver.api.sipServletSecurity.1.0_1.0-javadoc.zip
IBM-Provision-Capability=osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=com.ibm.websphere.appserver.sipServlet-1.1))", osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=com.ibm.websphere.appserver.appSecurity-1.0))"
-jars=com.ibm.websphere.appserver.api.sipServletSecurity.1.0; location\:\="dev/api/ibm/,lib/"
