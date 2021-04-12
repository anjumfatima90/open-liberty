#
#Mon Apr 12 14:46:11 CDT 2021
symbolicName=com.ibm.websphere.appserver.jwtSso-1.0
visibility=public
-include=~${workspace}/cnf/resources/bnd/feature.props
WLP-DisableAllFeatures-OnConflict=false
kind=ga
singleton=true
IBM-API-Package=org.eclipse.microprofile.jwt; type\="stable", org.eclipse.microprofile.auth; type\="stable"
edition=core
-features=com.ibm.websphere.appserver.jwt-1.0,com.ibm.websphere.appserver.appSecurity-2.0,com.ibm.websphere.appserver.jsonp-1.0;ibm.tolerates\:\="1.1",com.ibm.websphere.appserver.httpcommons-1.0,com.ibm.websphere.appserver.servlet-3.1;ibm.tolerates\:\="4.0",com.ibm.websphere.appserver.authFilter-1.0
-bundles=com.ibm.ws.security.jwtsso, com.ibm.ws.security.common, com.ibm.websphere.org.eclipse.microprofile.jwt.1.0; location\:\="dev/api/stable/,lib/"; mavenCoordinates\="org.eclipse.microprofile.jwt\:microprofile-jwt-auth-api\:1.0",com.ibm.ws.security.mp.jwt
Subsystem-Name=JSON Web Token Single Sign-On 1.0
IBM-ShortName=jwtSso-1.0
