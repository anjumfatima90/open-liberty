#
#Mon Apr 12 14:46:11 CDT 2021
IBM-Install-Policy=when-satisfied
symbolicName=com.ibm.websphere.appserver.jakarta-jdbc-4.3
kind=beta
-bundles=com.ibm.ws.jdbc.jakarta,com.ibm.ws.jdbc.4.1.jakarta,com.ibm.ws.jdbc.4.2.jakarta,com.ibm.ws.jdbc.4.3.jakarta
-include=~${workspace}/cnf/resources/bnd/feature.props
edition=core
IBM-Provision-Capability=osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(|(osgi.identity\=com.ibm.websphere.appserver.transaction-2.0)))", osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=com.ibm.websphere.appserver.jdbc-4.3))"
WLP-Activation-Type=parallel
