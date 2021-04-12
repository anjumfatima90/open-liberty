#
#Mon Apr 12 14:46:11 CDT 2021
symbolicName=com.ibm.websphere.appserver.wasJmsSecurity-1.0
visibility=public
-include=~${workspace}/cnf/resources/bnd/feature.props
WLP-DisableAllFeatures-OnConflict=false
kind=ga
edition=base
-features=com.ibm.websphere.appserver.wasJmsServer-1.0,com.ibm.websphere.appserver.security-1.0,com.ibm.websphere.appserver.transaction-1.1;ibm.tolerates\:\="1.2"
-bundles=com.ibm.ws.messaging.utils, com.ibm.ws.messaging.security, com.ibm.ws.messaging.security.common
Subsystem-Name=Message Server Security 1.0
IBM-ShortName=wasJmsSecurity-1.0
