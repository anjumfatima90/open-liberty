#
#Mon Apr 12 14:46:10 CDT 2021
IBM-Install-Policy=when-satisfied
symbolicName=com.ibm.websphere.appserver.jakarta-jdbc-4.1
kind=beta
-bundles=com.ibm.ws.jdbc.jakarta,com.ibm.ws.jdbc.4.1.jakarta
-include=~${workspace}/cnf/resources/bnd/feature.props
edition=core
IBM-Provision-Capability=osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(|(osgi.identity\=com.ibm.websphere.appserver.transaction-2.0)))", osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=com.ibm.websphere.appserver.jdbc-4.1))"
WLP-Activation-Type=parallel
