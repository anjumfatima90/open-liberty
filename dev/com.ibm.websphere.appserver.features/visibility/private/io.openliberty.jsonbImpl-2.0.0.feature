#
#Fri Apr 09 10:53:36 CDT 2021
symbolicName=io.openliberty.jsonbImpl-2.0.0
visibility=private
-include=~${workspace}/cnf/resources/bnd/feature.props
singleton=true
kind=beta
WLP-Activation-Type=parallel
-features=com.ibm.websphere.appserver.eeCompatible-9.0,com.ibm.websphere.appserver.classloading-1.0,io.openliberty.jakarta.cdi-3.0,io.openliberty.jsonp-2.0
edition=core
-bundles=com.ibm.ws.org.eclipse.yasson.2.0, io.openliberty.jakarta.jsonb.2.0; location\:\="dev/api/spec/,lib/"; mavenCoordinates\="jakarta.json.bind\:jakarta.json.bind-api\:2.0.0"
