#
#Mon Apr 12 14:46:10 CDT 2021
symbolicName=com.ibm.websphere.appserver.mpRestClient1.0-ssl1.0
visibility=private
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-App-ForceRestart=uninstall, install
IBM-Install-Policy=when-satisfied
kind=ga
edition=core
-features=com.ibm.websphere.appserver.jaxrsClient-2.0;ibm.tolerates\:\="2.1"
-bundles=com.ibm.ws.microprofile.rest.client.ssl
IBM-Provision-Capability=osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(|(osgi.identity\=com.ibm.websphere.appserver.mpRestClient-1.0)(osgi.identity\=com.ibm.websphere.appserver.mpRestClient-1.1)(osgi.identity\=com.ibm.websphere.appserver.mpRestClient-1.2)(osgi.identity\=com.ibm.websphere.appserver.mpRestClient-1.3)(osgi.identity\=com.ibm.websphere.appserver.mpRestClient-1.4)(osgi.identity\=com.ibm.websphere.appserver.mpRestClient-2.0)))", osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=com.ibm.websphere.appserver.ssl-1.0))"
