#
#Wed Mar 03 12:43:54 CST 2021
symbolicName=com.ibm.websphere.appserver.openid-2.0
visibility=public
-include=~${workspace}/cnf/resources/bnd/feature.props
WLP-DisableAllFeatures-OnConflict=false
kind=ga
edition=core
-features=com.ibm.websphere.appserver.appSecurity-2.0;ibm.tolerates\:\="3.0",com.ibm.websphere.appserver.httpcommons-1.0,com.ibm.websphere.appserver.servlet-3.0;ibm.tolerates\:\="3.1,4.0",com.ibm.websphere.appserver.authFilter-1.0
-bundles=com.ibm.ws.org.openid4java.0.9.7, com.ibm.ws.org.apache.xml.resolver.1.2, com.ibm.ws.security.openid.2.0, com.ibm.ws.org.apache.commons.codec, com.ibm.ws.org.apache.commons.logging.1.0.3, com.ibm.ws.com.google.guice.2.0, com.ibm.ws.org.cyberneko.html.1.9.18
Subsystem-Name=OpenID 2.0
IBM-ShortName=openid-2.0
