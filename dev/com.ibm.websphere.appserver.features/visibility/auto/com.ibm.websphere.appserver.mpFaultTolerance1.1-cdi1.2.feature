#
#Mon Feb 08 16:22:51 CST 2021
symbolicName=com.ibm.websphere.appserver.mpFaultTolerance1.1-cdi1.2
visibility=private
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-Install-Policy=when-satisfied
singleton=true
kind=ga
WLP-Activation-Type=parallel
edition=core
-bundles=com.ibm.ws.microprofile.faulttolerance.cdi, com.ibm.ws.microprofile.faulttolerance.1.1.cdi.services
IBM-Provision-Capability=osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=com.ibm.websphere.appserver.mpFaultTolerance-1.1))", osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(|(osgi.identity\=com.ibm.websphere.appserver.cdi-1.2)(osgi.identity\=com.ibm.websphere.appserver.cdi-2.0)))"
