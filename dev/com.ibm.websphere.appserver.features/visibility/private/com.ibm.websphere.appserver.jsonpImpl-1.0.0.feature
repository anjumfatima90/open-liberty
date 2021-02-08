#
#Mon Feb 08 16:22:51 CST 2021
symbolicName=com.ibm.websphere.appserver.jsonpImpl-1.0.0
visibility=private
-include=~${workspace}/cnf/resources/bnd/feature.props
WLP-DisableAllFeatures-OnConflict=false
singleton=true
kind=ga
WLP-Activation-Type=parallel
edition=core
-bundles=com.ibm.websphere.javaee.jsonp.1.0; location\:\="dev/api/spec/,lib/"; mavenCoordinates\="javax.json\:javax.json-api\:1.0", com.ibm.ws.org.glassfish.json.1.0
