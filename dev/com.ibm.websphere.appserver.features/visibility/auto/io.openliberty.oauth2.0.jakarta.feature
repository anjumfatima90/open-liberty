#
#Mon Feb 08 16:22:51 CST 2021
symbolicName=io.openliberty.oauth2.0.jakarta
visibility=private
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-Install-Policy=when-satisfied
kind=noship
edition=full
-features=io.openliberty.appSecurity-4.0,com.ibm.websphere.appserver.servlet-5.0,io.openliberty.pages-3.0
-bundles=io.openliberty.security.oauth.internal.2.0, io.openliberty.security.jwt.internal, io.openliberty.security.common.internal, io.openliberty.oauth; location\:\=dev/api/ibm/
-files=dev/api/ibm/javadoc/com.ibm.websphere.appserver.api.oauth_1.2-javadoc.zip
IBM-Provision-Capability=osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=com.ibm.websphere.appserver.oauth-2.0))",osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=com.ibm.websphere.appserver.servlet-5.0))"
