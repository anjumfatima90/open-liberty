#
#Mon Feb 08 16:22:51 CST 2021
symbolicName=com.ibm.websphere.appserver.passwordUtilities-1.0
visibility=public
-include=~${workspace}/cnf/resources/bnd/feature.props
WLP-DisableAllFeatures-OnConflict=false
kind=ga
IBM-API-Package=com.ibm.websphere.security.jca; type\="ibm-api", com.ibm.websphere.crypto; type\="ibm-api", com.ibm.websphere.security.auth.data; type\="ibm-api"
edition=base
-features=com.ibm.websphere.appserver.servlet-3.0;ibm.tolerates\:\="3.1,4.0,5.0"
Subsystem-Name=Password Utilities 1.0
-files=dev/api/ibm/javadoc/com.ibm.websphere.appserver.api.passwordUtil_1.0-javadoc.zip
-jars=com.ibm.websphere.appserver.api.passwordUtil; location\:\=dev/api/ibm/
IBM-ShortName=passwordUtilities-1.0
