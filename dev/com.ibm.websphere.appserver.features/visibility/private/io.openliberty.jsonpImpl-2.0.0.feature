#
#Fri Apr 09 10:53:36 CDT 2021
symbolicName=io.openliberty.jsonpImpl-2.0.0
visibility=private
-include=~${workspace}/cnf/resources/bnd/feature.props
singleton=true
kind=beta
WLP-Activation-Type=parallel
-features=com.ibm.websphere.appserver.eeCompatible-9.0
edition=core
-bundles=io.openliberty.jakarta.jsonp.2.0; location\:\="dev/api/spec/,lib/"; mavenCoordinates\="jakarta.json\:jakarta.json-api\:2.0.0", com.ibm.ws.org.glassfish.json.1.1.jakarta
