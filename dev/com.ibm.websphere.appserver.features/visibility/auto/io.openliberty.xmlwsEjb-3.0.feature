#
#Fri Apr 09 10:53:35 CDT 2021
symbolicName=io.openliberty.xmlwsEjb-3.0
visibility=private
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-App-ForceRestart=uninstall, install
IBM-Install-Policy=when-satisfied
kind=beta
WLP-Activation-Type=parallel
edition=base
-bundles=com.ibm.ws.jaxws.2.3.ejb.jakarta
IBM-Provision-Capability=osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=io.openliberty.xmlWS-3.0))", osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=io.openliberty.ejbLiteCore-2.0))"
