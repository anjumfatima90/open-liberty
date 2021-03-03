#
#Wed Mar 03 12:43:55 CST 2021
symbolicName=com.ibm.websphere.appserver.javax.annotation-1.2
-include=~${workspace}/cnf/resources/bnd/feature.props
WLP-DisableAllFeatures-OnConflict=false
singleton=true
kind=ga
WLP-Activation-Type=parallel
edition=core
-features=com.ibm.websphere.appserver.eeCompatible-7.0;ibm.tolerates\:\="6.0,8.0"
-bundles=com.ibm.websphere.javaee.annotation.1.2; location\:\="dev/api/spec/,lib/"; mavenCoordinates\="javax.annotation\:javax.annotation-api\:1.2"
IBM-Process-Types=server, client
