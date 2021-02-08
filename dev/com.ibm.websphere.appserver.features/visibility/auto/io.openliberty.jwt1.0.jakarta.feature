#
#Mon Feb 08 16:22:51 CST 2021
symbolicName=io.openliberty.jwt1.0.jakarta
visibility=private
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-Install-Policy=when-satisfied
kind=beta
edition=core
-bundles=io.openliberty.security.jwt.internal, io.openliberty.security.common.internal
-files=dev/api/ibm/javadoc/com.ibm.websphere.appserver.api.jwt_1.1-javadoc.zip
IBM-Provision-Capability=osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=com.ibm.websphere.appserver.jwt-1.0))",osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=com.ibm.websphere.appserver.servlet-5.0))"
-jars=io.openliberty.jwt; location\:\=dev/api/ibm/
