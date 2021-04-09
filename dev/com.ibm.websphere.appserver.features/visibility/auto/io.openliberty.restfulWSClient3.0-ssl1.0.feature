#
#Fri Apr 09 10:53:36 CDT 2021
IBM-Install-Policy=when-satisfied
visibility=private
symbolicName=io.openliberty.restfulWSClient3.0-ssl1.0
kind=beta
-bundles=io.openliberty.restfulWS.internal.ssl.jakarta
-include=~${workspace}/cnf/resources/bnd/feature.props
edition=core
IBM-Provision-Capability=osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=io.openliberty.restfulWSClient-3.0))", osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=com.ibm.websphere.appserver.ssl-1.0))"
