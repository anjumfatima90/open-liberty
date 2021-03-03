#
#Wed Mar 03 12:43:54 CST 2021
symbolicName=io.openliberty.audit1.0.javaee
visibility=private
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-Install-Policy=when-satisfied
kind=ga
edition=core
-features=com.ibm.websphere.appserver.appSecurity-2.0;ibm.tolerates\:\="3.0"
-bundles=com.ibm.ws.security.audit.file, com.ibm.ws.request.probe.audit.servlet
IBM-Provision-Capability=osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=com.ibm.websphere.appserver.audit-1.0))",osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(|(osgi.identity\=com.ibm.websphere.appserver.servlet-3.0)(osgi.identity\=com.ibm.websphere.appserver.servlet-3.1)(osgi.identity\=com.ibm.websphere.appserver.servlet-4.0)))"
