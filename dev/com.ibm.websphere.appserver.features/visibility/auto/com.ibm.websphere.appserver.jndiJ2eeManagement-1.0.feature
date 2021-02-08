#
#Mon Feb 08 16:22:51 CST 2021
IBM-Install-Policy=when-satisfied
symbolicName=com.ibm.websphere.appserver.jndiJ2eeManagement-1.0
kind=ga
-bundles=com.ibm.ws.jndi.management.j2ee
-include=~${workspace}/cnf/resources/bnd/feature.props
edition=base
IBM-Provision-Capability=osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=com.ibm.websphere.appserver.jndi-1.0))", osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=com.ibm.websphere.appserver.j2eeManagement-1.1))"
IBM-App-ForceRestart=install, uninstall
