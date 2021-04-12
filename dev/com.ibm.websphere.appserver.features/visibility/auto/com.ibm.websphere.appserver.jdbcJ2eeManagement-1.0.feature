#
#Mon Apr 12 14:46:10 CDT 2021
IBM-Install-Policy=when-satisfied
symbolicName=com.ibm.websphere.appserver.jdbcJ2eeManagement-1.0
kind=ga
-bundles=com.ibm.ws.jdbc.management.j2ee
-include=~${workspace}/cnf/resources/bnd/feature.props
edition=base
IBM-Provision-Capability=osgi.identity;filter\:\="(&(type\=osgi.subsystem.feature)(|(osgi.identity\=com.ibm.websphere.appserver.jdbc-4.1)(osgi.identity\=com.ibm.websphere.appserver.jdbc-4.2)(osgi.identity\=com.ibm.websphere.appserver.jdbc-4.3)))", osgi.identity;filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=com.ibm.websphere.appserver.j2eeManagement-1.1))"
singleton=true
