#
#Mon Apr 12 14:46:11 CDT 2021
symbolicName=com.ibm.websphere.appserver.jaxwsClientSecurity-2.2
visibility=private
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-App-ForceRestart=uninstall, install
IBM-Install-Policy=when-satisfied
kind=ga
edition=base
-bundles=com.ibm.ws.jaxws.clientcontainer.security
IBM-Provision-Capability=osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(|(osgi.identity\=com.ibm.websphere.appserver.jaxwsClient-2.2)(osgi.identity\=io.openliberty.xmlWSClient-3.0)))", osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=com.ibm.websphere.appserver.appSecurityClient-1.0))"
IBM-Process-Types=client
