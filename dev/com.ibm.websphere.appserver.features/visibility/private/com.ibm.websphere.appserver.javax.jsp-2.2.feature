#
#Mon Apr 12 14:46:11 CDT 2021
symbolicName=com.ibm.websphere.appserver.javax.jsp-2.2
kind=ga
-bundles=com.ibm.websphere.javaee.jsp.2.2; location\:\="dev/api/spec/,lib/"; mavenCoordinates\="javax.servlet.jsp\:javax.servlet.jsp-api\:2.2.1"
-include=~${workspace}/cnf/resources/bnd/feature.props
edition=core
-features=io.openliberty.servlet.api-3.0;apiJar\=false;ibm.tolerates\:\="3.1",com.ibm.websphere.appserver.eeCompatible-6.0;ibm.tolerates\:\="7.0,8.0",com.ibm.websphere.appserver.javax.el-2.2;apiJar\=false
singleton=true
WLP-DisableAllFeatures-OnConflict=false
