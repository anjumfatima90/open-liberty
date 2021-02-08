#
#Mon Feb 08 16:22:51 CST 2021
symbolicName=io.openliberty.autoPasswordUtilities1.0.jakarta
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-Install-Policy=when-satisfied
kind=beta
edition=base
-features=io.openliberty.appserver.connectors-2.0,com.ibm.websphere.appserver.authData-2.0,io.openliberty.appSecurity-4.0,com.ibm.websphere.appserver.servlet-5.0,com.ibm.websphere.appserver.transaction-2.0
-files=dev/api/ibm/javadoc/com.ibm.websphere.appserver.api.authData_1.0-javadoc.zip
IBM-Provision-Capability=osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=com.ibm.websphere.appserver.passwordUtilities-1.0))", osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=com.ibm.websphere.appserver.servlet-5.0))"
-jars=io.openliberty.authData; location\:\=dev/api/ibm/
