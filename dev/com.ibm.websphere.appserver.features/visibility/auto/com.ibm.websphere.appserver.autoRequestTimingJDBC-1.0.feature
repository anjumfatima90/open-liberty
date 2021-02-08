#
#Mon Feb 08 16:22:50 CST 2021
IBM-Install-Policy=when-satisfied
symbolicName=com.ibm.websphere.appserver.autoRequestTimingJDBC-1.0
kind=ga
-bundles=com.ibm.ws.request.timing.jdbc
-include=~${workspace}/cnf/resources/bnd/feature.props
edition=core
IBM-Provision-Capability=osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=com.ibm.websphere.appserver.requestTiming-1.0))", osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(|(osgi.identity\=com.ibm.websphere.appserver.jdbc-4.0)(osgi.identity\=com.ibm.websphere.appserver.jdbc-4.1)(osgi.identity\=com.ibm.websphere.appserver.jdbc-4.2)(osgi.identity\=com.ibm.websphere.appserver.jdbc-4.3)))"
Manifest-Version=1.0
