#
#Wed Mar 03 12:43:55 CST 2021
symbolicName=com.ibm.websphere.appserver.org.eclipse.microprofile.opentracing-1.1
visibility=private
-include=~${workspace}/cnf/resources/bnd/feature.props
WLP-DisableAllFeatures-OnConflict=false
singleton=true
kind=ga
WLP-Activation-Type=parallel
edition=core
-features=io.openliberty.mpCompatible-0.0
-bundles=com.ibm.websphere.org.eclipse.microprofile.opentracing.1.1; location\:\="dev/api/stable/,lib/"; mavenCoordinates\="org.eclipse.microprofile.opentracing\:microprofile-opentracing-api\:1.1"
