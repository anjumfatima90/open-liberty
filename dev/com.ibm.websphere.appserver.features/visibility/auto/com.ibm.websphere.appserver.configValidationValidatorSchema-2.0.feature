#
#Wed Mar 03 12:43:54 CST 2021
IBM-Install-Policy=when-satisfied
visibility=private
symbolicName=com.ibm.websphere.appserver.configValidationValidatorSchema-2.0
kind=ga
-bundles=io.openliberty.rest.handler.validator.openapi.2.0
-include=~${workspace}/cnf/resources/bnd/feature.props
edition=core
IBM-Provision-Capability=osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=com.ibm.websphere.appserver.mpOpenAPI-2.0))",osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(|(osgi.identity\=com.ibm.websphere.appserver.configValidationJDBC-1.0)(osgi.identity\=com.ibm.websphere.appserver.configValidationJCA-1.0)(osgi.identity\=com.ibm.websphere.appserver.configValidationCloudant-1.0)))"
