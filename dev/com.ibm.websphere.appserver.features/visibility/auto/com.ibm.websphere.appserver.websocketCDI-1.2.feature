#
#Wed Mar 03 12:43:54 CST 2021
symbolicName=com.ibm.websphere.appserver.websocketCDI-1.2
visibility=private
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-App-ForceRestart=install, uninstall
IBM-Install-Policy=when-satisfied
kind=ga
edition=core
-bundles=com.ibm.ws.wsoc.cdi.weld
IBM-Provision-Capability=osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(|(osgi.identity\=com.ibm.websphere.appserver.websocket-1.0)(osgi.identity\=com.ibm.websphere.appserver.websocket-1.1)))", osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(|(osgi.identity\=com.ibm.websphere.appserver.cdi-1.2)(osgi.identity\=com.ibm.websphere.appserver.cdi-2.0)))"
