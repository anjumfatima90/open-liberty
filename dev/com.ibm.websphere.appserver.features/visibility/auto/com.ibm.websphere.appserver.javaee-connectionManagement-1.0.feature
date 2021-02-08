#
#Mon Feb 08 16:22:51 CST 2021
symbolicName=com.ibm.websphere.appserver.javaee-connectionManagement-1.0
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-Install-Policy=when-satisfied
kind=ga
WLP-Activation-Type=parallel
-features=com.ibm.websphere.appserver.javax.connector.internal-1.6;ibm.tolerates\:\="1.7"
edition=core
-bundles=com.ibm.ws.jca.cm
IBM-Provision-Capability=osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(|(osgi.identity\=com.ibm.websphere.appserver.transaction-1.2)(osgi.identity\=com.ibm.websphere.appserver.transaction-1.1)))", osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=com.ibm.websphere.appserver.connectionManagement-1.0))"
