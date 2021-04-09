#
#Fri Apr 09 10:53:36 CDT 2021
IBM-Install-Policy=when-satisfied
visibility=private
symbolicName=com.ibm.websphere.appserver.configValidationConfigSchema-1.0
kind=ga
-bundles=com.ibm.ws.rest.handler.config.openapi,io.openliberty.rest.handler.config.openapi.common
-include=~${workspace}/cnf/resources/bnd/feature.props
edition=core
IBM-Provision-Capability=osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=com.ibm.websphere.appserver.restConnector-2.0))",osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(|(osgi.identity\=com.ibm.websphere.appserver.mpOpenAPI-1.0)(osgi.identity\=com.ibm.websphere.appserver.mpOpenAPI-1.1)))"
