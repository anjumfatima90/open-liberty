#
#Mon Feb 08 16:22:51 CST 2021
symbolicName=com.ibm.websphere.appserver.javax.connector.internal-1.7
-include=~${workspace}/cnf/resources/bnd/feature.props
WLP-DisableAllFeatures-OnConflict=false
singleton=true
kind=ga
WLP-Activation-Type=parallel
-features=com.ibm.websphere.appserver.eeCompatible-7.0;ibm.tolerates\:\="6.0,8.0"
edition=core
-bundles=com.ibm.websphere.javaee.connector.1.7; apiJar\=false; location\:\="dev/api/spec/,lib/"; mavenCoordinates\="javax.resource\:javax.resource-api\:1.7"
