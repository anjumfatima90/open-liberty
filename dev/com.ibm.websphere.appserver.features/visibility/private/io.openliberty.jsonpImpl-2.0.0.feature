-include=~${workspace}/cnf/resources/bnd/feature.props
symbolicName=io.openliberty.jsonpImpl-2.0.0
singleton=true
visibility=private
-features=com.ibm.websphere.appserver.eeCompatible-9.0
-bundles=io.openliberty.jakarta.jsonp.2.0; location:="dev/api/spec/,lib/"; mavenCoordinates="jakarta.json:jakarta.json-api:2.0.0", com.ibm.ws.org.glassfish.json.1.1.jakarta
kind=beta
edition=core
WLP-Activation-Type=parallel
