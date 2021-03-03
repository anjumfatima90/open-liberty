#
#Wed Mar 03 12:43:54 CST 2021
symbolicName=com.ibm.websphere.appserver.sip.servlet-3.1
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-App-ForceRestart=install, uninstall
IBM-Install-Policy=when-satisfied
kind=ga
edition=base
-bundles=com.ibm.ws.sipcontainer.servlet.3.1
Subsystem-Name=SIP Servlet 3.1
IBM-Provision-Capability=osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=com.ibm.websphere.appserver.sipServlet-1.1))", osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(|(osgi.identity\=com.ibm.websphere.appserver.servlet-3.1)(osgi.identity\=com.ibm.websphere.appserver.servlet-4.0)))"
