#
#Wed Mar 03 12:43:54 CST 2021
IBM-Install-Policy=when-satisfied
symbolicName=com.ibm.websphere.appserver.javaMailJ2eeManagement-1.0
kind=ga
-bundles=com.ibm.ws.javamail.management.j2ee
-include=~${workspace}/cnf/resources/bnd/feature.props
edition=base
IBM-Provision-Capability=osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(|(osgi.identity\=com.ibm.websphere.appserver.javaMail-1.5)(osgi.identity\=com.ibm.websphere.appserver.javaMail-1.6)))", osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=com.ibm.websphere.appserver.j2eeManagement-1.1))"
IBM-App-ForceRestart=install, uninstall
