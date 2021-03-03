#
#Wed Mar 03 12:43:54 CST 2021
symbolicName=io.openliberty.mpMetrics-3.0-monitor-1.0
visibility=private
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-Install-Policy=when-satisfied
singleton=true
kind=ga
edition=core
-bundles=io.openliberty.microprofile.metrics.internal.3.0.monitor
IBM-Provision-Capability=osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=com.ibm.websphere.appserver.mpMetrics-3.0))", osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(|(osgi.identity\=com.ibm.websphere.appserver.monitor-1.0)))"
