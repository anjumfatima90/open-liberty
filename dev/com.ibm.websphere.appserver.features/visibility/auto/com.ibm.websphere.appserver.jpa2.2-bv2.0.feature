symbolicName=com.ibm.websphere.appserver.jpa2.2-bv2.0
visibility=private
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-App-ForceRestart=install, uninstall
IBM-Install-Policy=when-satisfied
kind=ga
WLP-Activation-Type=parallel
edition=core
-bundles=com.ibm.ws.jpa.container.beanvalidation.2.0
IBM-Provision-Capability=osgi.identity; filter:="(&(type=osgi.subsystem.feature)(osgi.identity=com.ibm.websphere.appserver.jpaContainer-2.2))", osgi.identity; filter:="(&(type=osgi.subsystem.feature)(osgi.identity=com.ibm.websphere.appserver.beanValidation-2.0))"
