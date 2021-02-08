#
#Mon Feb 08 16:22:51 CST 2021
IBM-Install-Policy=when-satisfied
visibility=private
symbolicName=io.openliberty.restHandler1.0.jakarta
kind=beta
-bundles=com.ibm.ws.rest.handler.jakarta
-include=~${workspace}/cnf/resources/bnd/feature.props
edition=core
IBM-Provision-Capability=osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=com.ibm.websphere.appserver.restHandler-1.0))",osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=com.ibm.websphere.appserver.servlet-5.0))"
