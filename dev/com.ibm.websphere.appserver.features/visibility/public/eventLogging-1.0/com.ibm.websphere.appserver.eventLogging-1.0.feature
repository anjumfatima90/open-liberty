#
#Mon Feb 08 16:22:51 CST 2021
symbolicName=com.ibm.websphere.appserver.eventLogging-1.0
visibility=public
-include=~${workspace}/cnf/resources/bnd/feature.props
WLP-DisableAllFeatures-OnConflict=false
kind=ga
edition=core
-features=com.ibm.websphere.appserver.requestProbeServlet-1.0,com.ibm.websphere.appserver.requestProbeJDBC-1.0
-bundles=com.ibm.ws.event.logging
Subsystem-Name=Event Logging 1.0
IBM-ShortName=eventLogging-1.0
