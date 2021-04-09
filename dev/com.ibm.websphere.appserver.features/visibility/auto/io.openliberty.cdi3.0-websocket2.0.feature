#
#Fri Apr 09 10:53:36 CDT 2021
symbolicName=io.openliberty.cdi3.0-websocket2.0
visibility=private
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-App-ForceRestart=install, uninstall
IBM-Install-Policy=when-satisfied
kind=beta
WLP-Activation-Type=parallel
edition=core
-bundles=com.ibm.ws.wsoc.cdi.weld.jakarta
IBM-Provision-Capability=osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(|(osgi.identity\=io.openliberty.websocket-2.0)))", osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(|(osgi.identity\=io.openliberty.cdi-3.0)))"
