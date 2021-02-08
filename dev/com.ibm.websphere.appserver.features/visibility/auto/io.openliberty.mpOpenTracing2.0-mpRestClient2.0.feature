#
#Mon Feb 08 16:22:51 CST 2021
symbolicName=io.openliberty.mpOpenTracing2.0-mpRestClient2.0
visibility=private
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-Install-Policy=when-satisfied
singleton=true
kind=beta
edition=core
-bundles=io.openliberty.microprofile.opentracing.2.0.internal.rest.client
IBM-Provision-Capability=osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=com.ibm.websphere.appserver.mpOpenTracing-2.0))", osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=com.ibm.websphere.appserver.mpRestClient-2.0))"
