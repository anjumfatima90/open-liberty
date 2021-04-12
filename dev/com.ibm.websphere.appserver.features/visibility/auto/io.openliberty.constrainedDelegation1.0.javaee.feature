#
#Mon Apr 12 14:46:10 CDT 2021
IBM-Install-Policy=when-satisfied
visibility=private
symbolicName=io.openliberty.constrainedDelegation1.0.javaee
kind=ga
-include=~${workspace}/cnf/resources/bnd/feature.props
edition=core
-features=com.ibm.websphere.appserver.appSecurity-2.0;ibm.tolerates\:\="3.0"
IBM-Provision-Capability=osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=com.ibm.websphere.appserver.constrainedDelegation-1.0))",osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(|(osgi.identity\=com.ibm.websphere.appserver.eeCompatible-6.0)(osgi.identity\=com.ibm.websphere.appserver.eeCompatible-7.0)(osgi.identity\=com.ibm.websphere.appserver.eeCompatible-8.0)))"
