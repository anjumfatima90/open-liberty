#
#Mon Feb 08 16:22:51 CST 2021
symbolicName=io.openliberty.spnego1.0.jakarta
visibility=private
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-Install-Policy=when-satisfied
kind=beta
edition=core
-features=io.openliberty.appSecurity-4.0
-bundles=io.openliberty.security.spnego.internal
IBM-Provision-Capability=osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=com.ibm.websphere.appserver.spnego-1.0))",osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=com.ibm.websphere.appserver.servlet-5.0))"
