#
#Mon Apr 12 14:46:10 CDT 2021
symbolicName=io.openliberty.openidConnectClient1.0.javaee
visibility=private
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-Install-Policy=when-satisfied
kind=ga
edition=core
-features=com.ibm.websphere.appserver.jsp-2.2;ibm.tolerates\:\="2.3",com.ibm.websphere.appserver.servlet-3.0;ibm.tolerates\:\="3.1,4.0",com.ibm.websphere.appserver.javax.cdi-1.0;apiJar\=false;ibm.tolerates\:\="1.2,2.0"
-bundles=com.ibm.ws.security.openidconnect.client, com.ibm.ws.security.openidconnect.clients.common
IBM-Provision-Capability=osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=com.ibm.websphere.appserver.openidConnectClient-1.0))",osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(|(osgi.identity\=com.ibm.websphere.appserver.servlet-3.0)(osgi.identity\=com.ibm.websphere.appserver.servlet-3.1)(osgi.identity\=com.ibm.websphere.appserver.servlet-4.0)))"
