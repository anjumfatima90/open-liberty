#
#Fri Apr 09 10:53:36 CDT 2021
IBM-Install-Policy=when-satisfied
symbolicName=io.openliberty.enterpriseBeansRemote-appSecurity
kind=beta
-bundles=com.ibm.ws.security.csiv2.common, com.ibm.ws.security.csiv2
-include=~${workspace}/cnf/resources/bnd/feature.props
edition=base
-features=com.ibm.websphere.appserver.security-1.0,com.ibm.websphere.appserver.transaction-2.0
IBM-Provision-Capability=osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=io.openliberty.enterpriseBeansRemote-4.0))", osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=io.openliberty.appSecurity-4.0))"
