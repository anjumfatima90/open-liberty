#
#Wed Mar 03 12:43:54 CST 2021
symbolicName=com.ibm.websphere.appserver.jaxrs20managedbeans-1.0
visibility=private
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-App-ForceRestart=uninstall, install
IBM-Install-Policy=when-satisfied
kind=ga
edition=core
-features=com.ibm.websphere.appserver.jndi-1.0;apiJar\=false
-bundles=com.ibm.ws.jaxrs.2.0.managedbeans
IBM-Provision-Capability=osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=com.ibm.websphere.appserver.jaxrs-2.0))", osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=com.ibm.websphere.appserver.managedBeans-1.0))"
