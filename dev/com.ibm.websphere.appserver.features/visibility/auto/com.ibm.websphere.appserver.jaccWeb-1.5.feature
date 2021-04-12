#
#Mon Apr 12 14:46:10 CDT 2021
IBM-Install-Policy=when-satisfied
symbolicName=com.ibm.websphere.appserver.jaccWeb-1.5
kind=ga
-bundles=com.ibm.ws.security.authorization.jacc.web, com.ibm.websphere.javaee.jacc.1.5; location\:\="dev/api/spec/,lib"; mavenCoordinates\="javax.security.jacc\:javax.security.jacc-api\:1.5"
-include=~${workspace}/cnf/resources/bnd/feature.props
edition=core
IBM-Provision-Capability=osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=com.ibm.websphere.appserver.webAppSecurity-1.0))", osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=com.ibm.websphere.appserver.jacc-1.5))"
