#
#Mon Apr 12 14:46:11 CDT 2021
symbolicName=com.ibm.websphere.appserver.mpJwt-1.2
visibility=public
-include=~${workspace}/cnf/resources/bnd/feature.props
kind=ga
singleton=true
IBM-API-Package=org.eclipse.microprofile.jwt; type\="stable", org.eclipse.microprofile.auth; type\="stable"
WLP-Activation-Type=parallel
edition=core
-features=com.ibm.websphere.appserver.jwt-1.0,com.ibm.websphere.appserver.appSecurity-3.0,com.ibm.websphere.appserver.jsonp-1.1,com.ibm.websphere.appserver.httpcommons-1.0,com.ibm.websphere.appserver.mpConfig-2.0,com.ibm.websphere.appserver.servlet-4.0,com.ibm.websphere.appserver.org.eclipse.microprofile.jwt-1.2,io.openliberty.mpCompatible-4.0,com.ibm.websphere.appserver.cdi-2.0,com.ibm.websphere.appserver.authFilter-1.0
-bundles=com.ibm.ws.security.mp.jwt,com.ibm.ws.security.mp.jwt.cdi,io.openliberty.security.mp.jwt.1.2.config,com.ibm.ws.security.mp.jwt.1.1.config
Subsystem-Name=MicroProfile JSON Web Token 1.2
IBM-ShortName=mpJwt-1.2
