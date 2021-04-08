symbolicName=com.ibm.websphere.appserver.javax.annotation-1.1
-include=~${workspace}/cnf/resources/bnd/feature.props
WLP-DisableAllFeatures-OnConflict=false
singleton=true
kind=ga
WLP-Activation-Type=parallel
edition=core
-features=com.ibm.websphere.appserver.eeCompatible-6.0;ibm.tolerates:="7.0,8.0"
-bundles=com.ibm.websphere.javaee.annotation.1.1; location:="dev/api/spec/,lib/"; mavenCoordinates="javax.annotation:javax.annotation-api:1.2"
IBM-Process-Types=server, client
