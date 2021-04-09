#
#Fri Apr 09 10:53:36 CDT 2021
symbolicName=com.ibm.websphere.appserver.websocket-1.1
visibility=public
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-App-ForceRestart=install, uninstall
WLP-DisableAllFeatures-OnConflict=false
kind=ga
singleton=true
IBM-API-Package=javax.websocket; version\="1.1"; type\="spec", javax.websocket.server; version\="1.1"; type\="spec", com.ibm.websphere.wsoc; type\="ibm-api"
WLP-Activation-Type=parallel
edition=core
-features=com.ibm.websphere.appserver.servlet-3.1;ibm.tolerates\:\="4.0",com.ibm.websphere.appserver.eeCompatible-7.0;ibm.tolerates\:\="6.0,8.0"
-bundles=com.ibm.ws.wsoc, com.ibm.websphere.javaee.websocket.1.1; location\:\="dev/api/spec/,lib/"; mavenCoordinates\="javax.websocket\:javax.websocket-api\:1.1", com.ibm.ws.wsoc.1.1
Subsystem-Name=Java WebSocket 1.1
-files=dev/api/ibm/javadoc/com.ibm.websphere.appserver.api.wsoc_1.0-javadoc.zip
-jars=com.ibm.websphere.appserver.api.wsoc; location\:\=dev/api/ibm/
IBM-ShortName=websocket-1.1
