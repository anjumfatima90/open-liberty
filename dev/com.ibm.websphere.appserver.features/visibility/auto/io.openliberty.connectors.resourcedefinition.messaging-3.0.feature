#
#Mon Apr 12 14:46:10 CDT 2021
symbolicName=io.openliberty.connectors.resourcedefinition.messaging-3.0
visibility=private
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-App-ForceRestart=install, uninstall
IBM-Install-Policy=when-satisfied
kind=noship
WLP-Activation-Type=parallel
edition=full
-features=io.openliberty.jakarta.connectors-2.0
-bundles=com.ibm.ws.jca.resourcedefinition.jms.2.0.jakarta
IBM-Provision-Capability=osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=io.openliberty.messaging-3.0.internal))", osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=com.ibm.websphere.appserver.injection-2.0))"
