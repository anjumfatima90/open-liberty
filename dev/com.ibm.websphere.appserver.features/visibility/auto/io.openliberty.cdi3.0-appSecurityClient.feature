#
#Mon Apr 12 14:46:10 CDT 2021
symbolicName=io.openliberty.cdi3.0-appSecurityClient
visibility=private
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-Install-Policy=when-satisfied
kind=beta
edition=base
-bundles=com.ibm.ws.cdi.client
IBM-Provision-Capability=osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=io.openliberty.cdi-3.0))", osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=com.ibm.websphere.appserver.appSecurityClient-1.0))"
IBM-Process-Types=client, server
