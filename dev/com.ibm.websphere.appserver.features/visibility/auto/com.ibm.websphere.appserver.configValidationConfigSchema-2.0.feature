#
#Mon Feb 08 16:22:51 CST 2021
IBM-Install-Policy=when-satisfied
visibility=private
symbolicName=com.ibm.websphere.appserver.configValidationConfigSchema-2.0
kind=beta
-bundles=io.openliberty.rest.handler.config.openapi.2.0,io.openliberty.rest.handler.config.openapi.common
-include=~${workspace}/cnf/resources/bnd/feature.props
edition=core
IBM-Provision-Capability=osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=com.ibm.websphere.appserver.restConnector-2.0))",osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=com.ibm.websphere.appserver.mpOpenAPI-2.0))"
