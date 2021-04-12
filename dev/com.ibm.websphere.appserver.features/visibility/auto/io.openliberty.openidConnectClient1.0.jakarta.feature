#
#Mon Apr 12 14:46:10 CDT 2021
symbolicName=io.openliberty.openidConnectClient1.0.jakarta
visibility=private
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-Install-Policy=when-satisfied
kind=noship
edition=full
-features=com.ibm.websphere.appserver.servlet-5.0,io.openliberty.pages-3.0,io.openliberty.jakarta.cdi-3.0;apiJar\=false
-bundles=io.openliberty.security.openidconnect.internal.client, io.openliberty.security.openidconnect.internal.clients.common
IBM-Provision-Capability=osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=com.ibm.websphere.appserver.openidConnectClient-1.0))",osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=com.ibm.websphere.appserver.servlet-5.0))"
