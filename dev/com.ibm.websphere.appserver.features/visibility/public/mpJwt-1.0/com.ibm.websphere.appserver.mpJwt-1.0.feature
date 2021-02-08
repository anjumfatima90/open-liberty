#
#Mon Feb 08 16:22:51 CST 2021
symbolicName=com.ibm.websphere.appserver.mpJwt-1.0
visibility=public
-include=~${workspace}/cnf/resources/bnd/feature.props
WLP-DisableAllFeatures-OnConflict=false
kind=ga
singleton=true
IBM-API-Package=org.eclipse.microprofile.jwt; type\="stable", org.eclipse.microprofile.auth; type\="stable"
WLP-Activation-Type=parallel
edition=core
-features=com.ibm.websphere.appserver.jwt-1.0,com.ibm.websphere.appserver.org.eclipse.microprofile.jwt-1.0,com.ibm.websphere.appserver.appSecurity-2.0;ibm.tolerates\:\="3.0",com.ibm.websphere.appserver.jsonp-1.0;ibm.tolerates\:\="1.1",io.openliberty.mpCompatible-0.0,com.ibm.websphere.appserver.httpcommons-1.0,com.ibm.websphere.appserver.servlet-3.1;ibm.tolerates\:\="4.0",com.ibm.websphere.appserver.authFilter-1.0,com.ibm.websphere.appserver.cdi-1.2;ibm.tolerates\:\="2.0"
-bundles=com.ibm.ws.security.mp.jwt,com.ibm.ws.security.mp.jwt.cdi
Subsystem-Name=MicroProfile JSON Web Token 1.0
IBM-ShortName=mpJwt-1.0
