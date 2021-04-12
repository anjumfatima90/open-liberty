#
#Mon Apr 12 14:46:10 CDT 2021
symbolicName=io.openliberty.authFilter1.0.javaee
visibility=private
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-Install-Policy=when-satisfied
kind=ga
WLP-Activation-Type=parallel
edition=core
-bundles=com.ibm.ws.security.authentication.filter
IBM-Provision-Capability=osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=com.ibm.websphere.appserver.authFilter-1.0))",osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(|(osgi.identity\=io.openliberty.servlet.api-3.0)(osgi.identity\=io.openliberty.servlet.api-3.1)(osgi.identity\=io.openliberty.servlet.api-4.0)))"
