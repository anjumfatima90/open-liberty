#
#Mon Feb 08 16:22:51 CST 2021
symbolicName=com.ibm.websphere.appserver.cdi1.2-servlet3.1
visibility=private
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-Install-Policy=when-satisfied
kind=ga
WLP-Activation-Type=parallel
edition=core
-bundles=com.ibm.ws.cdi.1.2.web, com.ibm.ws.cdi.web, com.ibm.websphere.javaee.jsp.2.3; location\:\="dev/api/spec/,lib/"; mavenCoordinates\="javax.servlet.jsp\:javax.servlet.jsp-api\:2.3.1"
IBM-Provision-Capability=osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=com.ibm.websphere.appserver.cdi-1.2))", osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=com.ibm.websphere.appserver.servlet-3.1))"
