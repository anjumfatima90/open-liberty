IBM-Install-Policy=when-satisfied
symbolicName=com.ibm.websphere.appserver.webJ2eeManagement-1.0
kind=ga
-bundles=com.ibm.ws.webcontainer.management.j2ee
-include=~${workspace}/cnf/resources/bnd/feature.props
edition=base
IBM-Provision-Capability=osgi.identity;filter:="(&(type=osgi.subsystem.feature)(|(osgi.identity=com.ibm.websphere.appserver.servlet-3.0)(osgi.identity=com.ibm.websphere.appserver.servlet-3.1)(osgi.identity=com.ibm.websphere.appserver.servlet-4.0)))", osgi.identity;filter:="(&(type=osgi.subsystem.feature)(osgi.identity=com.ibm.websphere.appserver.j2eeManagement-1.1))"
IBM-App-ForceRestart=install, uninstall
