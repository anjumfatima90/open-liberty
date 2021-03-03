#
#Wed Mar 03 12:43:54 CST 2021
IBM-Install-Policy=when-satisfied
visibility=private
symbolicName=com.ibm.websphere.appserver.cdi2.0-appSecurity1.0
kind=ga
-bundles=com.ibm.ws.cdi.security
-include=~${workspace}/cnf/resources/bnd/feature.props
edition=core
IBM-Provision-Capability=osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=com.ibm.websphere.appserver.cdi-2.0))", osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(|(osgi.identity\=com.ibm.websphere.appserver.appSecurity-3.0)(osgi.identity\=com.ibm.websphere.appserver.appSecurity-2.0)))"
