#
#Wed Mar 03 12:43:55 CST 2021
visibility=protected
symbolicName=com.ibm.wsspi.appserver.webBundleSecurity-1.0
kind=ga
-bundles=com.ibm.websphere.security, com.ibm.ws.webcontainer.security.feature, com.ibm.ws.security.authorization.builtin
-include=~${workspace}/cnf/resources/bnd/feature.props
edition=core
-features=com.ibm.websphere.appserver.containerServices-1.0,com.ibm.wsspi.appserver.webBundle-1.0,com.ibm.websphere.appserver.servlet-3.0;ibm.tolerates\:\="3.1,4.0,5.0",com.ibm.websphere.appserver.distributedMap-1.0,com.ibm.websphere.appserver.security-1.0,com.ibm.websphere.appserver.authFilter-1.0,io.openliberty.distributedMapInternal-1.0;ibm.tolerates\:\="2.0"
WLP-DisableAllFeatures-OnConflict=false
