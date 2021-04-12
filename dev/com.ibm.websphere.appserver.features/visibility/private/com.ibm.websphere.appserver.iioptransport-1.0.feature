#
#Mon Apr 12 14:46:11 CDT 2021
symbolicName=com.ibm.websphere.appserver.iioptransport-1.0
kind=ga
-bundles=com.ibm.ws.transport.iiop.server
-include=~${workspace}/cnf/resources/bnd/feature.props
edition=base
-features=com.ibm.websphere.appserver.iiopcommon-1.0
WLP-DisableAllFeatures-OnConflict=false
WLP-Activation-Type=parallel
