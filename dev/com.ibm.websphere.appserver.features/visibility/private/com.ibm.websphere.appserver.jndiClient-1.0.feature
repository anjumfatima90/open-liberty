#
#Fri Apr 09 10:53:36 CDT 2021
visibility=private
symbolicName=com.ibm.websphere.appserver.jndiClient-1.0
kind=ga
-bundles=com.ibm.ws.jndi.remote.client
-include=~${workspace}/cnf/resources/bnd/feature.props
edition=base
-features=com.ibm.websphere.appserver.transaction-1.2,com.ibm.websphere.appserver.clientContainerRemoteSupportCommon-1.0,com.ibm.websphere.appserver.javax.cdi-1.2;ibm.tolerates\:\="2.0",com.ibm.websphere.appserver.jndi-1.0
WLP-DisableAllFeatures-OnConflict=false
