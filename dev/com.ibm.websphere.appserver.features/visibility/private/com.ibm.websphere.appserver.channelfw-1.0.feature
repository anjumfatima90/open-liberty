symbolicName=com.ibm.websphere.appserver.channelfw-1.0
-include=~${workspace}/cnf/resources/bnd/feature.props
WLP-DisableAllFeatures-OnConflict=false
kind=ga
IBM-API-Package=com.ibm.websphere.endpoint; type="ibm-api"
WLP-Activation-Type=parallel
edition=core
-bundles=com.ibm.ws.timer, com.ibm.ws.channelfw
-files=dev/api/ibm/javadoc/com.ibm.websphere.appserver.api.endpoint_1.0-javadoc.zip
IBM-Process-Types=server, client
-jars=com.ibm.websphere.appserver.api.endpoint; location:=dev/api/ibm/
