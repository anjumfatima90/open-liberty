#
#Mon Apr 12 14:46:11 CDT 2021
symbolicName=io.openliberty.servlet.api-3.0
-include=~${workspace}/cnf/resources/bnd/feature.props
WLP-DisableAllFeatures-OnConflict=false
singleton=true
kind=ga
WLP-Activation-Type=parallel
-features=com.ibm.websphere.appserver.eeCompatible-6.0;ibm.tolerates\:\="7.0,8.0"
edition=core
-bundles=com.ibm.websphere.javaee.servlet.3.0; location\:\="dev/api/spec/,lib/"; mavenCoordinates\="javax.servlet\:javax.servlet-api\:3.0.1"
