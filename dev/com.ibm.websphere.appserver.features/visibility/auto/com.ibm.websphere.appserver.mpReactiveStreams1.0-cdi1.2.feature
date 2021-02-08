#
#Mon Feb 08 16:22:51 CST 2021
symbolicName=com.ibm.websphere.appserver.mpReactiveStreams1.0-cdi1.2
visibility=private
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-Install-Policy=when-satisfied
singleton=true
kind=ga
WLP-Activation-Type=parallel
edition=core
-bundles=com.ibm.ws.microprofile.reactive.streams.operators.cdi
IBM-Provision-Capability=osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=com.ibm.websphere.appserver.mpReactiveStreams-1.0))", osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(|(osgi.identity\=com.ibm.websphere.appserver.cdi-1.2)(osgi.identity\=com.ibm.websphere.appserver.cdi-2.0)))"
