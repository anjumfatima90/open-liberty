#
#Mon Apr 12 14:46:10 CDT 2021
IBM-Install-Policy=when-satisfied
visibility=private
symbolicName=com.ibm.websphere.appserver.configValidationJDBC-1.0
kind=ga
-bundles=com.ibm.ws.rest.handler.validator,com.ibm.ws.rest.handler.validator.jdbc
-include=~${workspace}/cnf/resources/bnd/feature.props
edition=core
IBM-Provision-Capability=osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=com.ibm.websphere.appserver.restConnector-2.0))",osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(|(osgi.identity\=com.ibm.websphere.appserver.jdbc-4.1)(osgi.identity\=com.ibm.websphere.appserver.jdbc-4.2)(osgi.identity\=com.ibm.websphere.appserver.jdbc-4.3)))"
