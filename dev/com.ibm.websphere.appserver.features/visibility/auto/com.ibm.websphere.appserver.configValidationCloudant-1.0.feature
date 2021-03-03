#
#Wed Mar 03 12:43:54 CST 2021
IBM-Install-Policy=when-satisfied
visibility=private
symbolicName=com.ibm.websphere.appserver.configValidationCloudant-1.0
kind=ga
-bundles=com.ibm.ws.rest.handler.validator,com.ibm.ws.rest.handler.validator.cloudant
-include=~${workspace}/cnf/resources/bnd/feature.props
edition=base
IBM-Provision-Capability=osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=com.ibm.websphere.appserver.restConnector-2.0))",osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=com.ibm.websphere.appserver.cloudant-1.0))"
