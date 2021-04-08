symbolicName=com.ibm.websphere.appserver.mpConfig1.4-cdi1.2
visibility=private
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-Install-Policy=when-satisfied
singleton=true
kind=ga
WLP-Activation-Type=parallel
edition=core
-bundles=com.ibm.ws.microprofile.config.1.4.cdi, com.ibm.ws.microprofile.config.1.1.cdi, com.ibm.ws.microprofile.config.1.2.cdi, com.ibm.ws.microprofile.config.1.4.cdi.services
IBM-Provision-Capability=osgi.identity; filter:="(&(type=osgi.subsystem.feature)(osgi.identity=com.ibm.websphere.appserver.mpConfig-1.4))", osgi.identity; filter:="(&(type=osgi.subsystem.feature)(|(osgi.identity=com.ibm.websphere.appserver.cdi-1.2)(osgi.identity=com.ibm.websphere.appserver.cdi-2.0)))"
