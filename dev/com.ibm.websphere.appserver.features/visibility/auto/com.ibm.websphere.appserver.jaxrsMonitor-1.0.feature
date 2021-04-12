#
#Mon Apr 12 14:46:10 CDT 2021
symbolicName=com.ibm.websphere.appserver.jaxrsMonitor-1.0
Manifest-Version=1.0
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-Install-Policy=when-satisfied
kind=ga
IBM-API-Package=com.ibm.websphere.jaxrs.monitor; type\="ibm-api"
edition=core
-bundles=com.ibm.ws.jaxrs.2.x.monitor
IBM-Provision-Capability=osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=com.ibm.websphere.appserver.monitor-1.0))", osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(|(osgi.identity\=com.ibm.websphere.appserver.jaxrs-2.0)(osgi.identity\=com.ibm.websphere.appserver.jaxrs-2.1)))"
