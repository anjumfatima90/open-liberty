#
#Wed Mar 03 12:43:54 CST 2021
IBM-Install-Policy=when-satisfied
visibility=private
symbolicName=io.openliberty.constrainedDelegation1.0.jakarta
kind=beta
-include=~${workspace}/cnf/resources/bnd/feature.props
edition=core
-features=io.openliberty.appSecurity-4.0
IBM-Provision-Capability=osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=com.ibm.websphere.appserver.constrainedDelegation-1.0))",osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=com.ibm.websphere.appserver.eeCompatible-9.0))"
