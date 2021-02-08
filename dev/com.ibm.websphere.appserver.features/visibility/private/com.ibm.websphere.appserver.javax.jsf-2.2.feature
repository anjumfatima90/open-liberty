#
#Mon Feb 08 16:22:51 CST 2021
symbolicName=com.ibm.websphere.appserver.javax.jsf-2.2
-include=~${workspace}/cnf/resources/bnd/feature.props
WLP-DisableAllFeatures-OnConflict=false
singleton=true
kind=ga
WLP-Activation-Type=parallel
-features=com.ibm.websphere.appserver.eeCompatible-7.0;ibm.tolerates\:\="6.0,8.0"
edition=core
-bundles=com.ibm.websphere.javaee.jsf.2.2; location\:\="dev/api/spec/,lib/"; mavenCoordinates\="org.apache.myfaces.core\:myfaces-api\:2.2.12"
