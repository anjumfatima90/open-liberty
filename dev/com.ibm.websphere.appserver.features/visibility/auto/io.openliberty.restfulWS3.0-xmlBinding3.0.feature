#
#Wed Mar 03 12:43:54 CST 2021
IBM-Install-Policy=when-satisfied
visibility=private
symbolicName=io.openliberty.restfulWS3.0-xmlBinding3.0
kind=beta
-bundles=io.openliberty.org.jboss.resteasy.jaxb.provider.jakarta
-include=~${workspace}/cnf/resources/bnd/feature.props
edition=core
IBM-Provision-Capability=osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=io.openliberty.restfulWS-3.0))", osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=io.openliberty.xmlBinding-3.0))"
