symbolicName=com.ibm.websphere.appserver.passwordUtilities-1.0
visibility=public
-include=~${workspace}/cnf/resources/bnd/feature.props
WLP-DisableAllFeatures-OnConflict=false
kind=ga
IBM-API-Package=com.ibm.websphere.security.jca; type="ibm-api", com.ibm.websphere.crypto; type="ibm-api", com.ibm.websphere.security.auth.data; type="ibm-api"
edition=base
-features=io.openliberty.passwordUtilities1.0.internal.ee-6.0;ibm.tolerates:="9.0",com.ibm.websphere.appserver.servlet-3.0;ibm.tolerates:="3.1,4.0,5.0",com.ibm.websphere.appserver.transaction-1.1;ibm.tolerates:="1.2,2.0"
Subsystem-Name=Password Utilities 1.0
-files=dev/api/ibm/javadoc/com.ibm.websphere.appserver.api.passwordUtil_1.0-javadoc.zip
-jars=com.ibm.websphere.appserver.api.passwordUtil; location:=dev/api/ibm/, com.ibm.websphere.appserver.api.authData; location:=dev/api/ibm/, io.openliberty.authData; location:=dev/api/ibm/
IBM-ShortName=passwordUtilities-1.0
