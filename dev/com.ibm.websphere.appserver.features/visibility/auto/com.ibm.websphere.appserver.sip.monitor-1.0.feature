#
#Wed Mar 03 12:43:54 CST 2021
IBM-Install-Policy=when-satisfied
symbolicName=com.ibm.websphere.appserver.sip.monitor-1.0
kind=ga
-bundles=com.ibm.ws.sipcontainer.monitor
-include=~${workspace}/cnf/resources/bnd/feature.props
edition=base
IBM-Provision-Capability=osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=com.ibm.websphere.appserver.sipServlet-1.1))", osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=com.ibm.websphere.appserver.monitor-1.0))"
IBM-App-ForceRestart=install, uninstall
