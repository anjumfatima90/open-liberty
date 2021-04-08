symbolicName=com.ibm.websphere.appserver.javax.cdi-2.0
-include=~${workspace}/cnf/resources/bnd/feature.props
WLP-DisableAllFeatures-OnConflict=false
singleton=true
kind=ga
WLP-Activation-Type=parallel
-features=com.ibm.websphere.appserver.eeCompatible-8.0;ibm.tolerates:="6.0,7.0",com.ibm.websphere.appserver.javax.el-3.0;apiJar=false,com.ibm.websphere.appserver.javax.interceptor-1.2
edition=core
-bundles=com.ibm.websphere.javaee.cdi.2.0; location:="dev/api/spec/,lib/"; mavenCoordinates="javax.enterprise:cdi-api:2.0"
