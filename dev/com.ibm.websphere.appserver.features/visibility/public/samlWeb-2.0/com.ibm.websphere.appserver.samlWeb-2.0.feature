#
#Wed Mar 03 12:43:54 CST 2021
symbolicName=com.ibm.websphere.appserver.samlWeb-2.0
visibility=public
-include=~${workspace}/cnf/resources/bnd/feature.props
WLP-DisableAllFeatures-OnConflict=false
kind=ga
edition=core
-features=com.ibm.wsspi.appserver.webBundleSecurity-1.0,com.ibm.wsspi.appserver.webBundle-1.0,com.ibm.websphere.appserver.servlet-3.0;ibm.tolerates\:\="3.1,4.0,5.0",com.ibm.websphere.appserver.ssoCommon-1.0,com.ibm.websphere.appserver.wss4j-1.0,com.ibm.websphere.appserver.authFilter-1.0
-bundles=com.ibm.ws.org.opensaml.xmltooling.1.4.4, com.ibm.ws.org.joda.time.1.6.2, com.ibm.ws.org.apache.commons.logging.1.0.3, com.ibm.json4j, com.ibm.ws.org.apache.commons.codec, com.ibm.ws.org.jose4j, com.ibm.ws.org.apache.commons.httpclient
Subsystem-Name=SAML Web Single Sign-On 2.0
IBM-ShortName=samlWeb-2.0
