#
#Mon Apr 12 14:46:11 CDT 2021
symbolicName=io.openliberty.socialLogin1.0.jakarta
visibility=private
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-Install-Policy=when-satisfied
kind=noship
edition=full
-features=io.openliberty.jsonp-2.0
-bundles=io.openliberty.security.social,io.openliberty.security.openidconnect.internal.clients.common
IBM-Provision-Capability=osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=com.ibm.websphere.appserver.socialLogin-1.0))",osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=com.ibm.websphere.appserver.servlet-5.0))"
