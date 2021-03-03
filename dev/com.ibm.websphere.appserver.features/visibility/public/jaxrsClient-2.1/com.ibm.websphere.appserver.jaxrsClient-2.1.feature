#
#Wed Mar 03 12:43:55 CST 2021
symbolicName=com.ibm.websphere.appserver.jaxrsClient-2.1
visibility=public
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-App-ForceRestart=uninstall, install
WLP-DisableAllFeatures-OnConflict=false
kind=ga
singleton=true
IBM-API-Package=javax.ws.rs; type\="spec", javax.ws.rs.container; type\="spec", javax.ws.rs.core; type\="spec", javax.ws.rs.client; type\="spec", javax.ws.rs.ext; type\="spec", javax.ws.rs.sse; type\="spec", com.ibm.websphere.jaxrs20.multipart; type\="ibm-api", com.ibm.websphere.jaxrs.providers.json4j; type\="ibm-api"
WLP-Activation-Type=parallel
edition=core
-features=com.ibm.websphere.appserver.jaxrs.common-2.1,com.ibm.websphere.appserver.eeCompatible-8.0
-bundles=com.ibm.ws.jaxrs.2.0.client
Subsystem-Name=Java RESTful Services Client 2.1
IBM-SPI-Package=com.ibm.wsspi.webservices.handler
IBM-ShortName=jaxrsClient-2.1
