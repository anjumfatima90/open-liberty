#
#Fri Apr 09 10:53:36 CDT 2021
symbolicName=com.ibm.websphere.appserver.jsonpImpl-1.1.1
visibility=private
-include=~${workspace}/cnf/resources/bnd/feature.props
WLP-DisableAllFeatures-OnConflict=false
singleton=true
kind=ga
WLP-Activation-Type=parallel
edition=core
-features=com.ibm.websphere.appserver.eeCompatible-8.0
-bundles=com.ibm.websphere.javaee.jsonp.1.1; location\:\="dev/api/spec/,lib/"; mavenCoordinates\="javax.json\:javax.json-api\:1.1.3", com.ibm.ws.org.glassfish.json.1.1
