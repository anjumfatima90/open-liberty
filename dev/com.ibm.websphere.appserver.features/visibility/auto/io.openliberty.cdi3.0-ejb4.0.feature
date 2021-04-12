#
#Mon Apr 12 14:46:10 CDT 2021
symbolicName=io.openliberty.cdi3.0-ejb4.0
visibility=private
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-Install-Policy=when-satisfied
kind=beta
WLP-Activation-Type=parallel
edition=core
-bundles=com.ibm.ws.cdi.2.0.ejb.jakarta, com.ibm.ws.cdi.ejb.common.jakarta
IBM-Provision-Capability=osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=io.openliberty.cdi-3.0))", osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=io.openliberty.ejbCore-2.0))"
