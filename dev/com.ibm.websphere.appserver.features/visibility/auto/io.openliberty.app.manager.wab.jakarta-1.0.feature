#
#Mon Apr 12 14:46:10 CDT 2021
symbolicName=io.openliberty.app.manager.wab.jakarta-1.0
visibility=private
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-Install-Policy=when-satisfied
kind=beta
WLP-Activation-Type=parallel
edition=core
-bundles=com.ibm.ws.app.manager.wab.jakarta; start-phase\:\=APPLICATION_EARLY
IBM-Provision-Capability=osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=com.ibm.wsspi.appserver.webBundle-1.0))",osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=com.ibm.websphere.appserver.servlet-5.0))"
