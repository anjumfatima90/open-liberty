#
#Fri Apr 09 10:53:35 CDT 2021
symbolicName=com.ibm.websphere.appserver.ejbRemoteClientServer-1.0
visibility=private
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-Install-Policy=when-satisfied
kind=ga
IBM-API-Package=com.ibm.ws.clientcontainer.remote.common;type\="internal"
edition=base
-features=com.ibm.websphere.appserver.clientContainerRemoteSupportCommon-1.0
-bundles=com.ibm.ws.ejbcontainer.remote.client.server
IBM-Process-Types=server
IBM-Provision-Capability=osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=com.ibm.websphere.appserver.ejbRemote-3.2))", osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=com.ibm.websphere.appserver.clientContainerRemoteSupportCommon-1.0))"
