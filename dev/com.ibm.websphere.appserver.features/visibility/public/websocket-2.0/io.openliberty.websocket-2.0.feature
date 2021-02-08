#
#Mon Feb 08 16:22:51 CST 2021
symbolicName=io.openliberty.websocket-2.0
visibility=public
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-App-ForceRestart=install, uninstall
kind=beta
singleton=true
IBM-API-Package=jakarta.websocket; version\="2.0"; type\="spec", jakarta.websocket.server; version\="2.0"; type\="spec", com.ibm.websphere.wsoc; type\="ibm-api"
WLP-Activation-Type=parallel
edition=core
-features=com.ibm.websphere.appserver.servlet-5.0,com.ibm.websphere.appserver.eeCompatible-9.0
-bundles=com.ibm.ws.wsoc.jakarta, io.openliberty.jakarta.websocket.2.0; location\:\="dev/api/spec/,lib/"; mavenCoordinates\="jakarta.websocket\:jakarta.websocket-api\:2.0.0", com.ibm.ws.wsoc.1.1.jakarta
Subsystem-Name=Jakarta WebSocket 2.0
-files=dev/api/ibm/javadoc/com.ibm.websphere.appserver.api.wsoc_1.0-javadoc.zip
-jars=com.ibm.websphere.appserver.api.wsoc.jakarta; location\:\=dev/api/ibm/
IBM-ShortName=websocket-2.0
