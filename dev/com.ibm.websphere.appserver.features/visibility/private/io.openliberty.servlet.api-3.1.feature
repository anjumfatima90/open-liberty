#
#Wed Mar 03 12:43:55 CST 2021
symbolicName=io.openliberty.servlet.api-3.1
-include=~${workspace}/cnf/resources/bnd/feature.props
WLP-DisableAllFeatures-OnConflict=false
singleton=true
kind=ga
WLP-Activation-Type=parallel
-features=com.ibm.websphere.appserver.eeCompatible-7.0;ibm.tolerates\:\="6.0,8.0"
edition=core
-bundles=com.ibm.websphere.javaee.servlet.3.1; location\:\="dev/api/spec/,lib/"; mavenCoordinates\="javax.servlet\:javax.servlet-api\:3.1.0"
