#
#Mon Apr 12 14:46:10 CDT 2021
symbolicName=com.ibm.websphere.appserver.jca.resourcedefinition.jms-2.0
visibility=private
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-App-ForceRestart=install, uninstall
IBM-Install-Policy=when-satisfied
kind=ga
WLP-Activation-Type=parallel
edition=base
-features=com.ibm.websphere.appserver.javax.connector.internal-1.7
-bundles=com.ibm.ws.jca.resourcedefinition.jms.2.0
IBM-Provision-Capability=osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=com.ibm.websphere.appserver.internal.jms-2.0))", osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=com.ibm.websphere.appserver.injection-1.0))"
