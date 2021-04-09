#
#Fri Apr 09 10:53:36 CDT 2021
IBM-Install-Policy=when-satisfied
symbolicName=com.ibm.websphere.appserver.autoRequestProbeHttp-1.0
kind=ga
-bundles=com.ibm.ws.request.probe.http
-include=~${workspace}/cnf/resources/bnd/feature.props
edition=core
IBM-Provision-Capability=osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=com.ibm.websphere.appserver.requestProbeHttp-1.0))", osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=com.ibm.websphere.appserver.httptransport-1.0))"
Manifest-Version=1.0
