#
#Wed Mar 03 12:43:54 CST 2021
symbolicName=io.openliberty.cdi3.0-servlet5.0
visibility=private
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-Install-Policy=when-satisfied
kind=beta
WLP-Activation-Type=parallel
edition=core
-features=io.openliberty.jakarta.pages-3.0;apiJar\=false
-bundles=com.ibm.ws.cdi.2.0.web.jakarta, com.ibm.ws.cdi.web.jakarta
IBM-Provision-Capability=osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=io.openliberty.cdi-3.0))", osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=com.ibm.websphere.appserver.servlet-5.0))"
