#
#Mon Apr 12 14:46:11 CDT 2021
symbolicName=com.ibm.websphere.appserver.j2eeManagement-1.1
visibility=public
-include=~${workspace}/cnf/resources/bnd/feature.props
WLP-DisableAllFeatures-OnConflict=false
kind=ga
IBM-API-Package=com.ibm.websphere.management.j2ee; type\="ibm-api", javax.management.j2ee; type\="spec", javax.management.j2ee.statistics; type\="spec", org.omg.stub.javax.management.j2ee; type\="spec"
edition=base
-features=com.ibm.websphere.appserver.transaction-1.2,com.ibm.websphere.appserver.javax.ejb-3.2,com.ibm.websphere.appserver.iiopcommon-1.0
-bundles=com.ibm.ws.management.j2ee, com.ibm.ws.management.j2ee.mbeans; location\:\=lib/, com.ibm.websphere.javaee.management.j2ee.1.1; location\:\=dev/api/spec/; mavenCoordinates\="javax.management.j2ee\:javax.management.j2ee-api\:1.1.1"
Subsystem-Name=J2EE Management 1.1
-files=dev/api/ibm/javadoc/com.ibm.websphere.appserver.api.j2eemanagement_1.1-javadoc.zip
Subsystem-Version=1.1
-jars=com.ibm.websphere.appserver.api.j2eemanagement; location\:\=dev/api/ibm/
IBM-ShortName=j2eeManagement-1.1
