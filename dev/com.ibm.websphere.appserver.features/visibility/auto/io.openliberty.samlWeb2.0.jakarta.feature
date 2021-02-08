#
#Mon Feb 08 16:22:51 CST 2021
symbolicName=io.openliberty.samlWeb2.0.jakarta
visibility=private
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-Install-Policy=when-satisfied
kind=noship
edition=full
-features=io.openliberty.appSecurity-4.0,com.ibm.websphere.appserver.servlet-5.0
-bundles=io.openliberty.org.opensaml.opensaml.2.6.1, io.openliberty.org.opensaml.openws.1.5.6, io.openliberty.security.saml.internal.sso.2.0, io.openliberty.security.saml.internal.wab.2.0, io.openliberty.security.common.internal
IBM-Provision-Capability=osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=com.ibm.websphere.appserver.samlWeb-2.0))",osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=com.ibm.websphere.appserver.servlet-5.0))"
