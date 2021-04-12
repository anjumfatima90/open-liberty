#
#Mon Apr 12 14:46:11 CDT 2021
symbolicName=com.ibm.websphere.appserver.javax.annotation-1.3
-include=~${workspace}/cnf/resources/bnd/feature.props
WLP-DisableAllFeatures-OnConflict=false
singleton=true
kind=ga
WLP-Activation-Type=parallel
edition=core
-features=com.ibm.websphere.appserver.eeCompatible-8.0;ibm.tolerates\:\="6.0,7.0"
-bundles=com.ibm.websphere.javaee.annotation.1.3; location\:\="dev/api/spec/,lib/"; mavenCoordinates\="javax.annotation\:javax.annotation-api\:1.3.2"
IBM-Process-Types=server, client
