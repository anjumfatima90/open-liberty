IBM-Install-Policy=when-satisfied
visibility=private
symbolicName=io.openliberty.openidConnectServer1.0.javaee
kind=ga
-include=~${workspace}/cnf/resources/bnd/feature.props
edition=core
-features=com.ibm.websphere.appserver.jsp-2.2;ibm.tolerates:="2.3",com.ibm.websphere.appserver.servlet-3.0;ibm.tolerates:="3.1,4.0"
IBM-Provision-Capability=osgi.identity; filter:="(&(type=osgi.subsystem.feature)(osgi.identity=com.ibm.websphere.appserver.openidConnectServer-1.0))",osgi.identity; filter:="(&(type=osgi.subsystem.feature)(|(osgi.identity=com.ibm.websphere.appserver.servlet-3.0)(osgi.identity=com.ibm.websphere.appserver.servlet-3.1)(osgi.identity=com.ibm.websphere.appserver.servlet-4.0)))"
