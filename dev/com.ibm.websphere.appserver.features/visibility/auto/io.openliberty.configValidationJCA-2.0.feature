#
#Mon Feb 08 16:22:51 CST 2021
symbolicName=io.openliberty.configValidationJCA-2.0
visibility=private
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-Install-Policy=when-satisfied
kind=beta
WLP-Activation-Type=parallel
edition=base
-bundles=com.ibm.ws.rest.handler.validator,com.ibm.ws.rest.handler.validator.jca.jakarta
IBM-Provision-Capability=osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=io.openliberty.restConnector2.0.jakarta))",osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=io.openliberty.connectors-2.0))"
