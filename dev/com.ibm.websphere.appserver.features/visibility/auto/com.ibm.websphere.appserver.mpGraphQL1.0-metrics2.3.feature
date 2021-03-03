#
#Wed Mar 03 12:43:54 CST 2021
symbolicName=com.ibm.websphere.appserver.mpGraphQL1.0-metrics2.3
visibility=private
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-Install-Policy=when-satisfied
singleton=true
kind=ga
edition=core
-bundles=com.ibm.ws.microprofile.graphql.metrics.1.0
IBM-Provision-Capability=osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=com.ibm.websphere.appserver.mpGraphQL-1.0))", osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=com.ibm.websphere.appserver.mpMetrics-2.3))"
