symbolicName=io.openliberty.jakarta.websocket-2.0
kind=beta
-bundles=io.openliberty.jakarta.websocket.2.0; location:="dev/api/spec/,lib/"; mavenCoordinates="jakarta.websocket:jakarta.websocket-api:2.0.0"
-include=~${workspace}/cnf/resources/bnd/feature.props
edition=core
-features=com.ibm.websphere.appserver.eeCompatible-9.0
singleton=true
WLP-Activation-Type=parallel
