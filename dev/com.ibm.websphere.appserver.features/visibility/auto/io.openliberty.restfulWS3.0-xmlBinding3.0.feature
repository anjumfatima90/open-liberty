#
#Fri Apr 09 10:53:36 CDT 2021
symbolicName=io.openliberty.restfulWS3.0-xmlBinding3.0
visibility=private
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-Install-Policy=when-satisfied
kind=beta
WLP-Activation-Type=parallel
edition=core
-bundles=io.openliberty.org.jboss.resteasy.jaxb.provider.jakarta
IBM-Provision-Capability=osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=io.openliberty.restfulWS-3.0))", osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=io.openliberty.xmlBinding-3.0))"
