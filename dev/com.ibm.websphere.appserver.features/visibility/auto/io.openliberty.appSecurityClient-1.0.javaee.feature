#
#Mon Feb 08 16:22:51 CST 2021
IBM-Install-Policy=when-satisfied
visibility=private
symbolicName=io.openliberty.appSecurityClient-1.0.javaee
kind=ga
-bundles=com.ibm.ws.security.jaas.common
-include=~${workspace}/cnf/resources/bnd/feature.props
edition=base
IBM-Provision-Capability=osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=com.ibm.websphere.appserver.appSecurityClient-1.0))",osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(|(osgi.identity\=io.openliberty.servlet.api-3.0)(osgi.identity\=io.openliberty.servlet.api-3.1)(osgi.identity\=io.openliberty.servlet.api-4.0)))"
