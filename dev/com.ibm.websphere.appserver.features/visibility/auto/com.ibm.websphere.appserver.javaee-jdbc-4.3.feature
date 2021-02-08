#
#Mon Feb 08 16:22:51 CST 2021
IBM-Install-Policy=when-satisfied
symbolicName=com.ibm.websphere.appserver.javaee-jdbc-4.3
kind=ga
-bundles=com.ibm.ws.jdbc,com.ibm.ws.jdbc.4.1,com.ibm.ws.jdbc.4.2,com.ibm.ws.jdbc.4.3
-include=~${workspace}/cnf/resources/bnd/feature.props
edition=core
IBM-Provision-Capability=osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(|(osgi.identity\=com.ibm.websphere.appserver.transaction-1.2)(osgi.identity\=com.ibm.websphere.appserver.transaction-1.1)))", osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=com.ibm.websphere.appserver.jdbc-4.3))"
