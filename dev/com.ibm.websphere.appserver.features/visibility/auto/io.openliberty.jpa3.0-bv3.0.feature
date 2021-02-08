#
#Mon Feb 08 16:22:51 CST 2021
symbolicName=io.openliberty.jpa3.0-bv3.0
visibility=private
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-App-ForceRestart=install, uninstall
IBM-Install-Policy=when-satisfied
kind=beta
edition=core
-bundles=com.ibm.ws.jpa.container.beanvalidation.2.0.jakarta
IBM-Provision-Capability=osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=io.openliberty.persistenceContainer-3.0))", osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=io.openliberty.beanValidation-3.0))"
