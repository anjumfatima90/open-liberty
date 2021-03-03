#
#Wed Mar 03 12:43:54 CST 2021
symbolicName=io.openliberty.messaging.defaultresource-3.0
visibility=private
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-App-ForceRestart=install, uninstall
IBM-Install-Policy=when-satisfied
kind=beta
edition=base
-bundles=com.ibm.ws.messaging.jms.defaultresource
IBM-Provision-Capability=osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=io.openliberty.messagingClient-3.0))", osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=io.openliberty.messagingServer-3.0))"
