#
#Wed Mar 03 12:43:54 CST 2021
symbolicName=com.ibm.websphere.appserver.jaxrsAppSecurity-2.0
visibility=private
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-App-ForceRestart=uninstall, install
IBM-Install-Policy=when-satisfied
kind=ga
edition=core
-features=com.ibm.websphere.appserver.appSecurity-2.0;ibm.tolerates\:\="3.0"
-bundles=com.ibm.ws.jaxrs.2.0.security
IBM-Provision-Capability=osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=com.ibm.websphere.appserver.jaxrsClient-2.0))", osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=com.ibm.websphere.appserver.ssl-1.0))"
