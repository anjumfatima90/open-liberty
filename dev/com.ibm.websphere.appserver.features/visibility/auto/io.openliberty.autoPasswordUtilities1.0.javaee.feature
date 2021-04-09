#
#Fri Apr 09 10:53:36 CDT 2021
IBM-Install-Policy=when-satisfied
symbolicName=io.openliberty.autoPasswordUtilities1.0.javaee
kind=ga
-include=~${workspace}/cnf/resources/bnd/feature.props
edition=base
-features=com.ibm.websphere.appserver.javax.connector-1.6;ibm.tolerates\:\="1.7"
IBM-Provision-Capability=osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=com.ibm.websphere.appserver.passwordUtilities-1.0))", osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(|(osgi.identity\=com.ibm.websphere.appserver.servlet-3.0)(osgi.identity\=com.ibm.websphere.appserver.servlet-3.1)(osgi.identity\=com.ibm.websphere.appserver.servlet-4.0)))"
