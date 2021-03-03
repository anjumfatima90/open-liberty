#
#Wed Mar 03 12:43:54 CST 2021
symbolicName=io.openliberty.xmlwsSecurity-3.0
visibility=private
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-App-ForceRestart=uninstall, install
IBM-Install-Policy=when-satisfied
kind=beta
WLP-Activation-Type=parallel
edition=base
-bundles=com.ibm.ws.jaxws.2.3.security
IBM-Provision-Capability=osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=io.openliberty.xmlWS-3.0))", osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=io.openliberty.appSecurity-4.0))"
