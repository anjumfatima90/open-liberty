#
#Fri Apr 09 10:53:36 CDT 2021
symbolicName=io.openliberty.configValidationJCA-2.0
visibility=private
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-Install-Policy=when-satisfied
kind=beta
WLP-Activation-Type=parallel
edition=base
-bundles=com.ibm.ws.rest.handler.validator,com.ibm.ws.rest.handler.validator.jca.jakarta
IBM-Provision-Capability=osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=com.ibm.websphere.appserver.restConnector-2.0))",osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=io.openliberty.connectors-2.0))"
