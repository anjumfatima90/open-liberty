#
#Mon Apr 12 14:46:11 CDT 2021
symbolicName=com.ibm.websphere.appserver.distributedMap-1.0
visibility=public
-include=~${workspace}/cnf/resources/bnd/feature.props
WLP-DisableAllFeatures-OnConflict=false
kind=ga
IBM-API-Package=com.ibm.websphere.cache; type\="ibm-api", com.ibm.websphere.cache.exception; type\="ibm-api", com.ibm.websphere.exception; type\="ibm-api", com.ibm.ws.cache; type\="internal", com.ibm.ws.cache.eca; type\="internal", com.ibm.ws.cache.intf; type\="internal", com.ibm.ws.cache.config; type\="internal", com.ibm.ws.cache.spi; type\="ibm-api", com.ibm.wsspi.cache; type\="ibm-api"
WLP-Activation-Type=parallel
edition=core
-features=com.ibm.websphere.appserver.containerServices-1.0,com.ibm.websphere.appserver.classloading-1.0,com.ibm.websphere.appserver.jndi-1.0,io.openliberty.distributedMapInternal-1.0;ibm.tolerates\:\="2.0"
Subsystem-Name=Distributed Map interface for Dynamic Caching 1.0
-files=dev/api/ibm/javadoc/com.ibm.websphere.appserver.api.distributedMap_2.0-javadoc.zip
-jars=com.ibm.websphere.appserver.api.distributedMap; location\:\=dev/api/ibm/
IBM-ShortName=distributedMap-1.0
