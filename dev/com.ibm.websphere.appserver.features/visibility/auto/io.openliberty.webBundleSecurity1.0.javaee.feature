#
#Wed Mar 03 12:43:54 CST 2021
symbolicName=io.openliberty.webBundleSecurity1.0.javaee
visibility=private
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-Install-Policy=when-satisfied
kind=ga
WLP-Activation-Type=parallel
edition=core
-bundles=com.ibm.ws.webcontainer.security; start-phase\:\=SERVICE_EARLY, com.ibm.ws.security.authentication.filter, com.ibm.ws.security.authentication.tai, com.ibm.ws.security.sso
IBM-Provision-Capability=osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=com.ibm.wsspi.appserver.webBundleSecurity-1.0))",osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(|(osgi.identity\=com.ibm.websphere.appserver.servlet-3.0)(osgi.identity\=com.ibm.websphere.appserver.servlet-3.1)(osgi.identity\=com.ibm.websphere.appserver.servlet-4.0)))"
