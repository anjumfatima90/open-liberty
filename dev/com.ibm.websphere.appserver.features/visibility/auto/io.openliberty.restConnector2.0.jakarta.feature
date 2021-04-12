#
#Mon Apr 12 14:46:11 CDT 2021
IBM-Install-Policy=when-satisfied
visibility=private
symbolicName=io.openliberty.restConnector2.0.jakarta
kind=beta
-bundles=com.ibm.ws.jmx.connector.server.rest.jakarta
-include=~${workspace}/cnf/resources/bnd/feature.props
edition=core
IBM-Provision-Capability=osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=com.ibm.websphere.appserver.restConnector-2.0))",osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=com.ibm.websphere.appserver.servlet-5.0))"
