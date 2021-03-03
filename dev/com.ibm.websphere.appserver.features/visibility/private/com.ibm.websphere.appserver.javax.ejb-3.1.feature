#
#Wed Mar 03 12:43:55 CST 2021
symbolicName=com.ibm.websphere.appserver.javax.ejb-3.1
-include=~${workspace}/cnf/resources/bnd/feature.props
WLP-DisableAllFeatures-OnConflict=false
singleton=true
kind=ga
WLP-Activation-Type=parallel
-features=com.ibm.websphere.appserver.eeCompatible-6.0;ibm.tolerates\:\="7.0,8.0"
edition=core
-bundles=com.ibm.websphere.javaee.ejb.3.1; location\:\="dev/api/spec/,lib/"; mavenCoordinates\="org.glassfish\:javax.ejb\:3.1"
