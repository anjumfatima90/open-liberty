#
#Mon Apr 12 14:46:11 CDT 2021
symbolicName=com.ibm.websphere.appserver.clientContainerRemoteSupportCommon-1.0
visibility=private
-include=~${workspace}/cnf/resources/bnd/feature.props
WLP-DisableAllFeatures-OnConflict=false
kind=ga
WLP-Activation-Type=parallel
-features=com.ibm.websphere.appserver.containerServices-1.0,com.ibm.websphere.appserver.iiopclient-1.0
edition=base
-bundles=com.ibm.ws.clientcontainer.remote.common
