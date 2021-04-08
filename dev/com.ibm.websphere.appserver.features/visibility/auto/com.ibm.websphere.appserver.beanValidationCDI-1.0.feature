IBM-Install-Policy=when-satisfied
symbolicName=com.ibm.websphere.appserver.beanValidationCDI-1.0
kind=ga
-bundles=com.ibm.ws.beanvalidation.v11.cdi
-include=~${workspace}/cnf/resources/bnd/feature.props
edition=core
IBM-Provision-Capability=osgi.identity; filter:="(&(type=osgi.subsystem.feature)(osgi.identity=com.ibm.websphere.appserver.cdi-1.2))", osgi.identity; filter:="(&(type=osgi.subsystem.feature)(osgi.identity=com.ibm.websphere.appserver.beanValidation-1.1))"
IBM-App-ForceRestart=install, uninstall
