#
#Wed Mar 03 12:43:54 CST 2021
symbolicName=io.openliberty.audit1.0.jakarta
visibility=private
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-Install-Policy=when-satisfied
kind=beta
edition=core
-features=io.openliberty.appSecurity-4.0
-bundles=com.ibm.ws.security.audit.file.jakarta,com.ibm.ws.request.probe.audit.servlet.jakarta
IBM-Provision-Capability=osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=com.ibm.websphere.appserver.audit-1.0))",osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=com.ibm.websphere.appserver.servlet-5.0))"
