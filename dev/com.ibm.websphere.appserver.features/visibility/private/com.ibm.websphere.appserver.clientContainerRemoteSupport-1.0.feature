#
#Mon Feb 08 16:22:51 CST 2021
symbolicName=com.ibm.websphere.appserver.clientContainerRemoteSupport-1.0
visibility=private
-include=~${workspace}/cnf/resources/bnd/feature.props
WLP-DisableAllFeatures-OnConflict=false
kind=ga
IBM-API-Package=com.ibm.ws.clientcontainer.remote.common;type\="internal"
WLP-Activation-Type=parallel
edition=base
-features=com.ibm.websphere.appserver.iioptransport-1.0,com.ibm.websphere.appserver.clientContainerRemoteSupportCommon-1.0,com.ibm.websphere.appserver.injection-1.0;ibm.tolerates\:\="2.0",com.ibm.websphere.appserver.jndi-1.0
-bundles=com.ibm.ws.clientcontainer.remote.server
IBM-Process-Types=server
