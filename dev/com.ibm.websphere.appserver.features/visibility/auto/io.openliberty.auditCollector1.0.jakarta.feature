#
#Wed Mar 03 12:43:54 CST 2021
IBM-Install-Policy=when-satisfied
visibility=private
symbolicName=io.openliberty.auditCollector1.0.jakarta
kind=beta
-bundles=com.ibm.ws.security.audit.source.jakarta
-include=~${workspace}/cnf/resources/bnd/feature.props
edition=core
IBM-Provision-Capability=osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=com.ibm.websphere.appserver.auditCollector-1.0))",osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=com.ibm.websphere.appserver.servlet-5.0))"
