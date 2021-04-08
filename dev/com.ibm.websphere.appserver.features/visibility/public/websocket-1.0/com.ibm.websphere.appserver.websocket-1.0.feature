symbolicName=com.ibm.websphere.appserver.websocket-1.0
visibility=public
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-App-ForceRestart=install, uninstall
WLP-DisableAllFeatures-OnConflict=false
kind=ga
singleton=true
IBM-API-Package=javax.websocket; type="spec", javax.websocket.server; type="spec", com.ibm.websphere.wsoc; type="ibm-api"
edition=core
-features=com.ibm.websphere.appserver.servlet-3.1;ibm.tolerates:="4.0",com.ibm.websphere.appserver.eeCompatible-7.0;ibm.tolerates:="6.0,8.0"
-bundles=com.ibm.ws.wsoc, com.ibm.websphere.javaee.websocket.1.0; location:="dev/api/spec/,lib/"; mavenCoordinates="javax.websocket:javax.websocket-api:1.0"
Subsystem-Name=Java WebSocket 1.0
-files=dev/api/ibm/javadoc/com.ibm.websphere.appserver.api.wsoc_1.0-javadoc.zip
-jars=com.ibm.websphere.appserver.api.wsoc; location:=dev/api/ibm/
IBM-ShortName=websocket-1.0
