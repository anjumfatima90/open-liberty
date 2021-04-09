#
#Fri Apr 09 10:53:36 CDT 2021
symbolicName=com.ibm.websphere.appserver.javax.interceptor-1.2
-include=~${workspace}/cnf/resources/bnd/feature.props
WLP-DisableAllFeatures-OnConflict=false
singleton=true
kind=ga
WLP-Activation-Type=parallel
-features=com.ibm.websphere.appserver.eeCompatible-7.0;ibm.tolerates\:\="6.0,8.0"
edition=core
-bundles=com.ibm.websphere.javaee.interceptor.1.2; location\:\="dev/api/spec/,lib/"; mavenCoordinates\="javax.interceptor\:javax.interceptor-api\:1.2"
