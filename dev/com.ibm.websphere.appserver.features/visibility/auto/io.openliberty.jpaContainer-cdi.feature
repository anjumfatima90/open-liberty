#
#Wed Mar 03 12:43:54 CST 2021
symbolicName=io.openliberty.jpaContainer-cdi
visibility=private
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-App-ForceRestart=install, uninstall
IBM-Install-Policy=when-satisfied
kind=beta
edition=core
-bundles=com.ibm.ws.jpa.container.v21.cdi.jakarta
IBM-Provision-Capability=osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=io.openliberty.cdi-3.0))", osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=io.openliberty.persistenceContainer-3.0))"
