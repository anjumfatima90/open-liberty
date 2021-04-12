#
#Mon Apr 12 14:46:11 CDT 2021
symbolicName=com.ibm.websphere.appserver.el-3.0
visibility=public
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-App-ForceRestart=install, uninstall
WLP-DisableAllFeatures-OnConflict=false
kind=ga
singleton=true
IBM-API-Package=javax.el; type\="spec", org.apache.el;  type\="internal", org.apache.el.lang; type\="internal", org.apache.el.util; type\="internal", org.apache.el.stream; type\="internal"
WLP-Activation-Type=parallel
edition=core
-features=com.ibm.websphere.appserver.eeCompatible-7.0;ibm.tolerates\:\="6.0,8.0",com.ibm.websphere.appserver.javax.el-3.0
-bundles=com.ibm.ws.org.apache.jasper.el.3.0
Subsystem-Name=Expression Language 3.0
Subsystem-Version=3.0.0
IBM-ShortName=el-3.0
