#
#Mon Apr 12 14:46:11 CDT 2021
symbolicName=com.ibm.websphere.appserver.requestTiming-1.0
visibility=public
-include=~${workspace}/cnf/resources/bnd/feature.props
WLP-DisableAllFeatures-OnConflict=false
kind=ga
IBM-API-Package=com.ibm.websphere.interrupt;type\="internal"
edition=core
-features=com.ibm.websphere.appserver.appLifecycle-1.0,com.ibm.websphere.appserver.requestProbeServlet-1.0,com.ibm.websphere.appserver.containerServices-1.0,com.ibm.websphere.appserver.requestProbeJDBC-1.0
-bundles=com.ibm.ws.request.timing, com.ibm.websphere.interrupt, com.ibm.ws.request.interrupt
Subsystem-Name=Request Timing 1.0
IBM-ShortName=requestTiming-1.0
