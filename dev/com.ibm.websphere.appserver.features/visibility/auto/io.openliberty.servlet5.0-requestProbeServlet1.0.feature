IBM-Install-Policy=when-satisfied
symbolicName=io.openliberty.servlet5.0-requestProbeServlet1.0
kind=beta
-bundles=com.ibm.ws.request.probe.servlet.jakarta
-include=~${workspace}/cnf/resources/bnd/feature.props
edition=core
IBM-Provision-Capability=osgi.identity; filter:="(&(type=osgi.subsystem.feature)(osgi.identity=com.ibm.websphere.appserver.requestProbeServlet-1.0))", osgi.identity; filter:="(&(type=osgi.subsystem.feature)(|(osgi.identity=com.ibm.websphere.appserver.servlet-5.0)))"
Manifest-Version=1.0
