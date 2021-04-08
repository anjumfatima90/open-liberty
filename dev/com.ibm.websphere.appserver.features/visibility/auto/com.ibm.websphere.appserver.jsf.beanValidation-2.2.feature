IBM-Install-Policy=when-satisfied
symbolicName=com.ibm.websphere.appserver.jsf.beanValidation-2.2
kind=ga
-bundles=com.ibm.ws.jsf.beanvalidation
-include=~${workspace}/cnf/resources/bnd/feature.props
edition=core
IBM-Provision-Capability=osgi.identity; filter:="(&(type=osgi.subsystem.feature)(osgi.identity=com.ibm.websphere.appserver.jsf-2.2))", osgi.identity; filter:="(&(type=osgi.subsystem.feature)(osgi.identity=com.ibm.websphere.appserver.beanValidation-1.1))"
IBM-App-ForceRestart=install, uninstall
