#
#Fri Apr 09 10:53:36 CDT 2021
symbolicName=com.ibm.websphere.appserver.securityInfrastructure-1.0
kind=ga
-bundles=com.ibm.ws.security.authentication, com.ibm.ws.security.credentials, com.ibm.ws.security.token, com.ibm.ws.security.authorization, com.ibm.ws.security, com.ibm.websphere.security, com.ibm.ws.security.registry; start-phase\:\=CONTAINER_EARLY, com.ibm.ws.management.security, com.ibm.ws.security.ready.service, com.ibm.ws.security.mp.jwt.proxy, com.ibm.websphere.security.authentication, com.ibm.ws.security.token.s4u2
-include=~${workspace}/cnf/resources/bnd/feature.props
edition=core
-features=com.ibm.websphere.appserver.classloading-1.0
WLP-DisableAllFeatures-OnConflict=false
