#
#Wed Mar 03 12:43:55 CST 2021
symbolicName=com.ibm.websphere.appserver.javax.cdi-1.0
kind=ga
-bundles=com.ibm.websphere.javaee.cdi.1.0; location\:\="dev/api/spec/,lib/"; mavenCoordinates\="javax.enterprise\:cdi-api\:1.0-SP4"
-include=~${workspace}/cnf/resources/bnd/feature.props
edition=core
-features=com.ibm.websphere.appserver.eeCompatible-6.0;ibm.tolerates\:\="7.0,8.0"
singleton=true
WLP-DisableAllFeatures-OnConflict=false
