#
#Wed Mar 03 12:43:54 CST 2021
symbolicName=com.ibm.websphere.appserver.jaxwscdi-2.3
visibility=private
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-App-ForceRestart=uninstall, install
IBM-Install-Policy=when-satisfied
kind=noship
edition=full
-features=com.ibm.websphere.appserver.jndi-1.0
-bundles=com.ibm.ws.jaxws.cdi
IBM-Provision-Capability=osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=com.ibm.websphere.appserver.jaxws-2.3))", osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=com.ibm.websphere.appserver.cdi-2.0))"
