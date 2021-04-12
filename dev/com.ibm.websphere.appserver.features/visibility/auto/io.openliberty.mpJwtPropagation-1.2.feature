#
#Mon Apr 12 14:46:10 CDT 2021
IBM-Install-Policy=when-satisfied 
visibility=private
symbolicName=io.openliberty.mpJwtPropagation-1.2
kind=ga
-bundles=io.openliberty.org.eclipse.microprofile.jwt.1.2; location\:\="dev/api/stable/,lib/"; mavenCoordinates\="org.eclipse.microprofile.jwt\:microprofile-jwt-auth-api\:1.2",com.ibm.ws.security.mp.jwt.propagation, com.ibm.ws.jaxrs.2.0.client
-include=~${workspace}/cnf/resources/bnd/feature.props
edition=core
IBM-Provision-Capability=osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(|(osgi.identity\=com.ibm.websphere.appserver.jaxrsClient-2.1)))", osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(|(osgi.identity\=com.ibm.websphere.appserver.mpJwt-1.2)))"
