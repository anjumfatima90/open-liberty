#
#Mon Feb 08 16:22:51 CST 2021
symbolicName=io.openliberty.mpFaultTolerance3.0-metrics
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-Install-Policy=when-satisfied
singleton=true
kind=beta
WLP-Activation-Type=parallel
edition=core
-bundles=io.openliberty.microprofile.faulttolerance.3.0.internal.metrics
IBM-Provision-Capability=osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=com.ibm.websphere.appserver.mpFaultTolerance-3.0))", osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=com.ibm.websphere.appserver.mpMetrics-3.0))"
