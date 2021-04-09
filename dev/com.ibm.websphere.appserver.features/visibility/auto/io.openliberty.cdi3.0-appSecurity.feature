#
#Fri Apr 09 10:53:36 CDT 2021
IBM-Install-Policy=when-satisfied
visibility=private
symbolicName=io.openliberty.cdi3.0-appSecurity
kind=beta
-bundles=com.ibm.ws.cdi.security
-include=~${workspace}/cnf/resources/bnd/feature.props
edition=core
IBM-Provision-Capability=osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=io.openliberty.cdi-3.0))", osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=io.openliberty.appSecurity-4.0))"
