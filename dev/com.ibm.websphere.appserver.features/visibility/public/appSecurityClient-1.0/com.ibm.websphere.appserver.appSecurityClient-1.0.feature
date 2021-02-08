#
#Mon Feb 08 16:22:51 CST 2021
symbolicName=com.ibm.websphere.appserver.appSecurityClient-1.0
visibility=public
-include=~${workspace}/cnf/resources/bnd/feature.props
WLP-DisableAllFeatures-OnConflict=false
kind=ga
IBM-API-Package=com.ibm.wsspi.security.auth.callback; type\="ibm-api", com.ibm.websphere.security.auth.callback; type\="ibm-api", com.ibm.websphere.security; type\="ibm-api"
edition=base
-features=io.openliberty.servlet.api-3.0;apiJar\=false;ibm.tolerates\:\="3.1,4.0,5.0",com.ibm.websphere.appserver.ssl-1.0,com.ibm.websphere.appserver.csiv2Client-1.0
-bundles=com.ibm.ws.security.authentication, com.ibm.ws.security.credentials, com.ibm.ws.security.token, com.ibm.ws.security.authorization, com.ibm.ws.security.client, com.ibm.ws.security, com.ibm.ws.security.registry, com.ibm.websphere.security.impl, com.ibm.ws.security.mp.jwt.proxy, com.ibm.ws.security.token.s4u2
Subsystem-Name=Application Security for Client 1.0
-files=dev/api/ibm/javadoc/com.ibm.websphere.appserver.api.securityClient_1.1-javadoc.zip
-jars=com.ibm.websphere.appserver.api.securityClient; location\:\=dev/api/ibm/
IBM-ShortName=appSecurityClient-1.0
