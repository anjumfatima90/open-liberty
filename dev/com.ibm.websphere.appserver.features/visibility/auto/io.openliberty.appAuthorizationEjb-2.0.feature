#
#Fri Apr 09 10:53:36 CDT 2021
IBM-Install-Policy=when-satisfied
symbolicName=io.openliberty.appAuthorizationEjb-2.0
kind=beta
-bundles=io.openliberty.security.authorization.internal.jacc.ejb
-include=~${workspace}/cnf/resources/bnd/feature.props
edition=core
IBM-Provision-Capability=osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=io.openliberty.ejbCore-2.0))", osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=io.openliberty.appAuthorization-2.0))"
