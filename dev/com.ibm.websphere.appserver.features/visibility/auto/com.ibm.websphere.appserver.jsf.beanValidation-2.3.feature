#
#Mon Feb 08 16:22:51 CST 2021
IBM-Install-Policy=when-satisfied
symbolicName=com.ibm.websphere.appserver.jsf.beanValidation-2.3
kind=ga
-bundles=com.ibm.ws.jsf.beanvalidation
-include=~${workspace}/cnf/resources/bnd/feature.props
edition=core
IBM-Provision-Capability=osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=com.ibm.websphere.appserver.jsf-2.3))", osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=com.ibm.websphere.appserver.beanValidation-2.0))"
IBM-App-ForceRestart=install, uninstall
