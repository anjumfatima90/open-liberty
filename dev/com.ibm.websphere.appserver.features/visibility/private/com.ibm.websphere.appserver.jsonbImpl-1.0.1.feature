#
#Mon Feb 08 16:22:51 CST 2021
symbolicName=com.ibm.websphere.appserver.jsonbImpl-1.0.1
visibility=private
-include=~${workspace}/cnf/resources/bnd/feature.props
WLP-DisableAllFeatures-OnConflict=false
singleton=true
kind=ga
WLP-Activation-Type=parallel
edition=core
-features=com.ibm.websphere.appserver.jsonp-1.1,com.ibm.websphere.appserver.classloading-1.0,com.ibm.websphere.appserver.eeCompatible-8.0,com.ibm.websphere.appserver.javax.cdi-2.0
-bundles=com.ibm.ws.org.eclipse.yasson.1.0, com.ibm.websphere.javaee.jsonb.1.0; location\:\="dev/api/spec/,lib/"; mavenCoordinates\="javax.json.bind\:javax.json.bind-api\:1.0"
