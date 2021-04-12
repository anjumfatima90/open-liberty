#
#Mon Apr 12 14:46:10 CDT 2021
symbolicName=io.openliberty.cdi3.0-xmlws3.0
visibility=private
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-App-ForceRestart=uninstall, install
IBM-Install-Policy=when-satisfied
kind=beta
WLP-Activation-Type=parallel
edition=base
-features=com.ibm.websphere.appserver.jndi-1.0
-bundles=com.ibm.ws.jaxws.cdi.jakarta
IBM-Provision-Capability=osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=io.openliberty.xmlWS-3.0))", osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=io.openliberty.cdi-3.0))"
