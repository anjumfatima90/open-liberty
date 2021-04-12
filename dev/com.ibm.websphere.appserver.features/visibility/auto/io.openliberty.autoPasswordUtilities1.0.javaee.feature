#
#Mon Apr 12 14:46:10 CDT 2021
symbolicName=io.openliberty.autoPasswordUtilities1.0.javaee
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-Install-Policy=when-satisfied
kind=ga
edition=base
-features=com.ibm.websphere.appserver.appSecurity-1.0;ibm.tolerates\:\="2.0,3.0",com.ibm.websphere.appserver.authData-1.0,com.ibm.websphere.appserver.servlet-3.0;ibm.tolerates\:\="3.1,4.0",com.ibm.websphere.appserver.javax.connector-1.6;ibm.tolerates\:\="1.7",com.ibm.websphere.appserver.transaction-1.1;ibm.tolerates\:\="1.2"
-files=dev/api/ibm/javadoc/com.ibm.websphere.appserver.api.authData_1.0-javadoc.zip
IBM-Provision-Capability=osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=com.ibm.websphere.appserver.passwordUtilities-1.0))", osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(|(osgi.identity\=com.ibm.websphere.appserver.servlet-3.0)(osgi.identity\=com.ibm.websphere.appserver.servlet-3.1)(osgi.identity\=com.ibm.websphere.appserver.servlet-4.0)))"
-jars=com.ibm.websphere.appserver.api.authData; location\:\=dev/api/ibm/
