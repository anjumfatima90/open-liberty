#
#Wed Mar 03 12:43:54 CST 2021
IBM-Install-Policy=when-satisfied
symbolicName=com.ibm.websphere.appserver.autoRequestProbeJDBC-1.0
kind=ga
-bundles=com.ibm.ws.request.probe.jdbc
-include=~${workspace}/cnf/resources/bnd/feature.props
edition=core
IBM-Provision-Capability=osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=com.ibm.websphere.appserver.requestProbeJDBC-1.0))", osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(|(osgi.identity\=com.ibm.websphere.appserver.jdbc-4.0)(osgi.identity\=com.ibm.websphere.appserver.jdbc-4.1)(osgi.identity\=com.ibm.websphere.appserver.jdbc-4.2)(osgi.identity\=com.ibm.websphere.appserver.jdbc-4.3)))"
Manifest-Version=1.0
