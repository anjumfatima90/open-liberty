#
#Wed Mar 03 12:43:55 CST 2021
symbolicName=com.ibm.websphere.appserver.org.eclipse.microprofile.jwt-1.0
visibility=private
-include=~${workspace}/cnf/resources/bnd/feature.props
WLP-DisableAllFeatures-OnConflict=false
singleton=true
kind=ga
edition=core
-features=io.openliberty.mpCompatible-0.0
-bundles=com.ibm.websphere.org.eclipse.microprofile.jwt.1.0; location\:\="dev/api/stable/,lib/"; mavenCoordinates\="org.eclipse.microprofile.jwt\:microprofile-jwt-auth-api\:1.0"
