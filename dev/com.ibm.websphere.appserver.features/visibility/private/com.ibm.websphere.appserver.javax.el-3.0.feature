symbolicName=com.ibm.websphere.appserver.javax.el-3.0
-include=~${workspace}/cnf/resources/bnd/feature.props
WLP-DisableAllFeatures-OnConflict=false
singleton=true
kind=ga
WLP-Activation-Type=parallel
-features=com.ibm.websphere.appserver.eeCompatible-7.0;ibm.tolerates:="6.0,8.0"
edition=core
-bundles=com.ibm.websphere.javaee.el.3.0; location:="dev/api/spec/,lib/"; mavenCoordinates="javax.el:javax.el-api:3.0.0"
