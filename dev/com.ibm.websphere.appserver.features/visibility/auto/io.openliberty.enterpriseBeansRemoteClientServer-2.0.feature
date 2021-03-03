#
#Wed Mar 03 12:43:54 CST 2021
symbolicName=io.openliberty.enterpriseBeansRemoteClientServer-2.0
visibility=private
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-Install-Policy=when-satisfied
kind=beta
IBM-API-Package=com.ibm.ws.clientcontainer.remote.common;type\="internal"
WLP-Activation-Type=parallel
edition=base
-features=com.ibm.websphere.appserver.clientContainerRemoteSupportCommon-1.0
-bundles=com.ibm.ws.ejbcontainer.remote.client.server.jakarta
IBM-Process-Types=server
IBM-Provision-Capability=osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=io.openliberty.enterpriseBeansRemote-4.0))", osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=com.ibm.websphere.appserver.clientContainerRemoteSupportCommon-1.0))"
