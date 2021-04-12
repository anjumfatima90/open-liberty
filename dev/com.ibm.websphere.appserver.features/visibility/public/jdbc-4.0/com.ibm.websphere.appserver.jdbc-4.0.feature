#
#Mon Apr 12 14:46:11 CDT 2021
symbolicName=com.ibm.websphere.appserver.jdbc-4.0
visibility=public
-include=~${workspace}/cnf/resources/bnd/feature.props
WLP-DisableAllFeatures-OnConflict=false
kind=ga
singleton=true
IBM-API-Package=com.ibm.wsspi.zos.tx; type\="internal"
edition=core
-features=com.ibm.websphere.appserver.appLifecycle-1.0,com.ibm.websphere.appserver.connectionManagement-1.0,com.ibm.websphere.appserver.requestProbes-1.0,com.ibm.websphere.appserver.classloading-1.0,com.ibm.websphere.appserver.jndi-1.0,com.ibm.websphere.appserver.transaction-1.1;ibm.tolerates\:\="1.2,2.0"
-bundles=com.ibm.ws.jdbc.4.0.feature,com.ibm.ws.jdbc.metatype
Subsystem-Name=Java Database Connectivity 4.0
IBM-ShortName=jdbc-4.0
