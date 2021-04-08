IBM-Install-Policy=when-satisfied
symbolicName=com.ibm.websphere.appserver.jakarta-jcaSecurity-1.0
kind=beta
-bundles=com.ibm.ws.security.jca.jakarta
-include=~${workspace}/cnf/resources/bnd/feature.props
edition=core
IBM-Provision-Capability=osgi.identity; filter:="(&(type=osgi.subsystem.feature)(|(osgi.identity=com.ibm.websphere.appserver.transaction-2.0)))", osgi.identity; filter:="(&(type=osgi.subsystem.feature)(osgi.identity=com.ibm.websphere.appserver.jcaSecurity-1.0))"
WLP-Activation-Type=parallel
