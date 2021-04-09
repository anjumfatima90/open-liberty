#
#Fri Apr 09 10:53:36 CDT 2021
symbolicName=com.ibm.websphere.appserver.mpRestClient1.0-cdi1.2
visibility=private
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-Install-Policy=when-satisfied
kind=ga
singleton=true
IBM-API-Package=com.ibm.ws.microprofile.rest.client.cdi; type\="internal"
edition=core
-bundles=com.ibm.ws.microprofile.rest.client.cdi
IBM-Provision-Capability=osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(|(osgi.identity\=com.ibm.websphere.appserver.mpRestClient-1.0)(osgi.identity\=com.ibm.websphere.appserver.mpRestClient-1.1)(osgi.identity\=com.ibm.websphere.appserver.mpRestClient-1.2)(osgi.identity\=com.ibm.websphere.appserver.mpRestClient-1.3)(osgi.identity\=com.ibm.websphere.appserver.mpRestClient-1.4)(osgi.identity\=com.ibm.websphere.appserver.mpRestClient-2.0)))", osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(|(osgi.identity\=com.ibm.websphere.appserver.cdi-1.2)(osgi.identity\=com.ibm.websphere.appserver.cdi-2.0)))"
