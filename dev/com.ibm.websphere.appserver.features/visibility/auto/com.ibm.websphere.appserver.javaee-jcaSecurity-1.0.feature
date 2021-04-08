IBM-Install-Policy=when-satisfied
symbolicName=com.ibm.websphere.appserver.javaee-jcaSecurity-1.0
kind=ga
-bundles=com.ibm.ws.security.jca
-include=~${workspace}/cnf/resources/bnd/feature.props
edition=core
IBM-Provision-Capability=osgi.identity; filter:="(&(type=osgi.subsystem.feature)(|(osgi.identity=com.ibm.websphere.appserver.transaction-1.2)(osgi.identity=com.ibm.websphere.appserver.transaction-1.1)))", osgi.identity; filter:="(&(type=osgi.subsystem.feature)(osgi.identity=com.ibm.websphere.appserver.jcaSecurity-1.0))"
WLP-Activation-Type=parallel
