#
#Mon Apr 12 14:46:10 CDT 2021
symbolicName=io.openliberty.ejbSecurity-2.0
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-App-ForceRestart=install, uninstall
IBM-Install-Policy=when-satisfied
kind=beta
edition=core
-features=com.ibm.websphere.appserver.containerServices-1.0
-bundles=com.ibm.ws.security.appbnd, io.openliberty.ejbcontainer.security.internal
IBM-Provision-Capability=osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=io.openliberty.ejbCore-2.0))", osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=io.openliberty.appSecurity-4.0))"
