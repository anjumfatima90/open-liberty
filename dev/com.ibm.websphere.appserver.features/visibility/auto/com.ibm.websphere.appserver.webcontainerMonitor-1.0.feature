#
#Mon Feb 08 16:22:51 CST 2021
IBM-Install-Policy=when-satisfied
symbolicName=com.ibm.websphere.appserver.webcontainerMonitor-1.0
kind=ga
-bundles=com.ibm.ws.webcontainer.monitor
-include=~${workspace}/cnf/resources/bnd/feature.props
edition=core
IBM-Provision-Capability=osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=com.ibm.websphere.appserver.monitor-1.0))", osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(|(osgi.identity\=com.ibm.websphere.appserver.servlet-3.0)(osgi.identity\=com.ibm.websphere.appserver.servlet-3.1)(osgi.identity\=com.ibm.websphere.appserver.servlet-4.0)))"
Manifest-Version=1.0
