#
#Fri Apr 09 10:53:36 CDT 2021
symbolicName=com.ibm.websphere.appserver.security-1.0
-include=~${workspace}/cnf/resources/bnd/feature.props
WLP-DisableAllFeatures-OnConflict=false
kind=ga
IBM-API-Package=com.ibm.wsspi.security.tai; type\="ibm-api", com.ibm.wsspi.security.token; type\="ibm-api", com.ibm.wsspi.security.auth.callback; type\="ibm-api", com.ibm.wsspi.security.common.auth.module; type\="ibm-api", com.ibm.websphere.security.auth.callback; type\="ibm-api"
edition=core
-features=com.ibm.websphere.appserver.basicRegistry-1.0,io.openliberty.servlet.api-3.0;apiJar\=false;ibm.tolerates\:\="3.1,4.0,5.0",com.ibm.websphere.appserver.builtinAuthorization-1.0,com.ibm.websphere.appserver.ssl-1.0,com.ibm.websphere.appserver.securityInfrastructure-1.0,com.ibm.websphere.appserver.ltpa-1.0,com.ibm.websphere.appserver.builtinAuthentication-1.0;ibm.tolerates\:\="2.0"
-bundles=com.ibm.websphere.security.impl, com.ibm.ws.management.security, com.ibm.ws.security.quickstart
-files=dev/api/ibm/javadoc/com.ibm.websphere.appserver.api.security_1.3-javadoc.zip, dev/api/ibm/javadoc/com.ibm.websphere.appserver.api.security.spnego_1.1-javadoc.zip
-jars=com.ibm.websphere.appserver.api.security; location\:\=dev/api/ibm/, com.ibm.websphere.appserver.api.security.spnego; location\:\=dev/api/ibm/
