#
#Mon Apr 12 14:46:11 CDT 2021
symbolicName=com.ibm.websphere.appserver.javax.interceptor-1.1
-include=~${workspace}/cnf/resources/bnd/feature.props
WLP-DisableAllFeatures-OnConflict=false
singleton=true
kind=ga
WLP-Activation-Type=parallel
-features=com.ibm.websphere.appserver.eeCompatible-6.0;ibm.tolerates\:\="7.0,8.0"
edition=core
-bundles=com.ibm.websphere.javaee.interceptor.1.1; location\:\="dev/api/spec/,lib/"; mavenCoordinates\="org.apache.geronimo.specs\:geronimo-interceptor_1.1_spec\:1.0"
