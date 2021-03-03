#
#Wed Mar 03 12:43:54 CST 2021
symbolicName=io.openliberty.ejbliteJPA-2.0
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-App-ForceRestart=install, uninstall
IBM-Install-Policy=when-satisfied
kind=beta
WLP-Activation-Type=parallel
edition=core
-bundles=com.ibm.ws.ejbcontainer.jpa.jakarta
IBM-Provision-Capability=osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=io.openliberty.ejbLiteCore-2.0))", osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=io.openliberty.persistenceContainer-3.0))"
