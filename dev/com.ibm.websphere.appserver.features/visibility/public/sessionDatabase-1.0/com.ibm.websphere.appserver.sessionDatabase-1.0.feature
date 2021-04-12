#
#Mon Apr 12 14:46:11 CDT 2021
symbolicName=com.ibm.websphere.appserver.sessionDatabase-1.0
Manifest-Version=1.0
visibility=public
-include=~${workspace}/cnf/resources/bnd/feature.props
WLP-DisableAllFeatures-OnConflict=false
kind=ga
edition=core
-features=com.ibm.websphere.appserver.sessionStore-1.0.0.Database,io.openliberty.servlet.api-3.0;apiJar\=false;ibm.tolerates\:\="3.1,4.0,5.0",com.ibm.websphere.appserver.jdbc-4.0;ibm.tolerates\:\="4.1,4.2,4.3",com.ibm.websphere.appserver.jndi-1.0,com.ibm.websphere.appserver.transaction-1.1;ibm.tolerates\:\="1.2,2.0"
-bundles=com.ibm.websphere.security, com.ibm.ws.serialization
Subsystem-Name=Database Session Persistence 1.0
IBM-ShortName=sessionDatabase-1.0
