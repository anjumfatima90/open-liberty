#
#Fri Apr 09 10:53:36 CDT 2021
symbolicName=com.ibm.websphere.appserver.iiopclient-1.0
-include=~${workspace}/cnf/resources/bnd/feature.props
WLP-DisableAllFeatures-OnConflict=false
kind=ga
WLP-Activation-Type=parallel
-features=com.ibm.websphere.appserver.iiopcommon-1.0
edition=base
-bundles=com.ibm.ws.transport.iiop.client
IBM-Process-Types=server, client
