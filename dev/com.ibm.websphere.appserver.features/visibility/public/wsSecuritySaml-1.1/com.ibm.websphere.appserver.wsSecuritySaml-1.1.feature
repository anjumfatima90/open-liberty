#
#Mon Feb 08 16:22:51 CST 2021
symbolicName=com.ibm.websphere.appserver.wsSecuritySaml-1.1
visibility=public
-include=~${workspace}/cnf/resources/bnd/feature.props
WLP-DisableAllFeatures-OnConflict=false
kind=ga
edition=base
-features=com.ibm.websphere.appserver.wsSecurity-1.1,com.ibm.websphere.appserver.jta-1.1;ibm.tolerates\:\="1.2",com.ibm.websphere.appserver.servlet-3.0;ibm.tolerates\:\="3.1,4.0",com.ibm.websphere.appserver.ssoCommon-1.0,com.ibm.websphere.appserver.samlWeb-2.0
-bundles=com.ibm.ws.wssecurity.saml
Subsystem-Name=WSSecurity SAML 1.1
IBM-ShortName=wsSecuritySaml-1.1
