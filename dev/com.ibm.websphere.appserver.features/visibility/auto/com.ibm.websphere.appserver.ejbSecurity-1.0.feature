#
#Wed Mar 03 12:43:54 CST 2021
symbolicName=com.ibm.websphere.appserver.ejbSecurity-1.0
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-App-ForceRestart=install, uninstall
IBM-Install-Policy=when-satisfied
kind=ga
edition=core
-features=com.ibm.websphere.appserver.containerServices-1.0
-bundles=com.ibm.ws.security.appbnd, com.ibm.ws.ejbcontainer.security
IBM-Provision-Capability=osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=com.ibm.websphere.appserver.ejbCore-1.0))", osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(|(osgi.identity\=com.ibm.websphere.appserver.appSecurity-2.0)(osgi.identity\=com.ibm.websphere.appserver.appSecurity-3.0)))"
