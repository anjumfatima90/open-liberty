#
#Fri Apr 09 10:53:36 CDT 2021
symbolicName=com.ibm.websphere.appserver.jaxrscdi-2.1
visibility=private
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-App-ForceRestart=uninstall, install
IBM-Install-Policy=when-satisfied
kind=ga
WLP-Activation-Type=parallel
edition=core
-features=com.ibm.websphere.appserver.jndi-1.0
-bundles=com.ibm.ws.jaxrs.2.0.cdi
IBM-Provision-Capability=osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=com.ibm.websphere.appserver.jaxrs-2.1))", osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=com.ibm.websphere.appserver.cdi-2.0))"
