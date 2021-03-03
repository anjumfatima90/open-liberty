#
#Wed Mar 03 12:43:54 CST 2021
symbolicName=io.openliberty.iioptransport.transaction-2.0
visibility=private
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-Install-Policy=when-satisfied
kind=ga
WLP-Activation-Type=parallel
edition=base
-bundles=com.ibm.ws.transport.iiop.transaction.jakarta
IBM-Provision-Capability=osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=com.ibm.websphere.appserver.transaction-2.0))", osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=com.ibm.websphere.appserver.iioptransport-1.0))"
