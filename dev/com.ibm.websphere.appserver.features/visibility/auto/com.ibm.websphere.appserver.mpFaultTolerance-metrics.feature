#
#Fri Apr 09 10:53:36 CDT 2021
IBM-Install-Policy=when-satisfied
symbolicName=com.ibm.websphere.appserver.mpFaultTolerance-metrics
kind=ga
-bundles=com.ibm.ws.microprofile.faulttolerance.metrics, com.ibm.ws.microprofile.faulttolerance.metrics.1.1
-include=~${workspace}/cnf/resources/bnd/feature.props
edition=core
IBM-Provision-Capability=osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(|(osgi.identity\=com.ibm.websphere.appserver.mpFaultTolerance-1.1)(osgi.identity\=com.ibm.websphere.appserver.mpFaultTolerance-2.0)))", osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=com.ibm.websphere.appserver.mpMetrics-1.1))"
singleton=true
