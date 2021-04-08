IBM-Install-Policy=when-satisfied
visibility=private
symbolicName=com.ibm.websphere.appserver.cdi2.0-mpContextPropagation1.0
kind=ga
-bundles=com.ibm.ws.cdi.mp.context
-include=~${workspace}/cnf/resources/bnd/feature.props
edition=core
IBM-Provision-Capability=osgi.identity; filter:="(&(type=osgi.subsystem.feature)(osgi.identity=com.ibm.websphere.appserver.cdi-2.0))", osgi.identity; filter:="(&(type=osgi.subsystem.feature)(|(osgi.identity=com.ibm.websphere.appserver.mpContextPropagation-1.0)(osgi.identity=com.ibm.websphere.appserver.mpContextPropagation-1.2)))"
