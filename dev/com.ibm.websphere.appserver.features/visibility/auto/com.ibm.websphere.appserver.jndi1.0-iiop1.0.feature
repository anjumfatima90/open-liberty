symbolicName=com.ibm.websphere.appserver.jndi1.0-iiop1.0
visibility=private
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-Install-Policy=when-satisfied
kind=ga
WLP-Activation-Type=parallel
edition=base
-features=com.ibm.websphere.appserver.appLifecycle-1.0
-bundles=com.ibm.ws.jndi.iiop
IBM-Provision-Capability=osgi.identity; filter:="(&(type=osgi.subsystem.feature)(osgi.identity=com.ibm.websphere.appserver.jndi-1.0))", osgi.identity; filter:="(&(type=osgi.subsystem.feature)(osgi.identity=com.ibm.websphere.appserver.iiopcommon-1.0))"
