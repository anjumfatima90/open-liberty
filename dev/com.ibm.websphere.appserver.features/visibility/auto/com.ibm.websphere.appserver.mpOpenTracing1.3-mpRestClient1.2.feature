#
#Wed Mar 03 12:43:54 CST 2021
symbolicName=com.ibm.websphere.appserver.mpOpenTracing1.3-mpRestClient1.2
visibility=private
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-Install-Policy=when-satisfied
singleton=true
kind=ga
edition=core
-bundles=com.ibm.ws.microprofile.opentracing.rest.client.1.3
IBM-Provision-Capability=osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=com.ibm.websphere.appserver.mpOpenTracing-1.3))", osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(|(osgi.identity\=com.ibm.websphere.appserver.mpRestClient-1.2)(osgi.identity\=com.ibm.websphere.appserver.mpRestClient-1.3)(osgi.identity\=com.ibm.websphere.appserver.mpRestClient-1.4)))"
