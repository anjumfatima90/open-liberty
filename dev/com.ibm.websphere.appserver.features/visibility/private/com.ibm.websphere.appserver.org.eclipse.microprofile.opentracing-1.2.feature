#
#Mon Apr 12 14:46:11 CDT 2021
symbolicName=com.ibm.websphere.appserver.org.eclipse.microprofile.opentracing-1.2
visibility=private
-include=~${workspace}/cnf/resources/bnd/feature.props
WLP-DisableAllFeatures-OnConflict=false
singleton=true
kind=ga
WLP-Activation-Type=parallel
edition=core
-features=io.openliberty.mpCompatible-0.0
-bundles=com.ibm.websphere.org.eclipse.microprofile.opentracing.1.2; location\:\="dev/api/stable/,lib/"; mavenCoordinates\="org.eclipse.microprofile.opentracing\:microprofile-opentracing-api\:1.2"
