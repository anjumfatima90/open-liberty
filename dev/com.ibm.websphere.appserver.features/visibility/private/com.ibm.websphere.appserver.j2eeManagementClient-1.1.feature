symbolicName=com.ibm.websphere.appserver.j2eeManagementClient-1.1
visibility=private
-include=~${workspace}/cnf/resources/bnd/feature.props
WLP-DisableAllFeatures-OnConflict=false
kind=ga
IBM-API-Package=javax.management.j2ee; type="spec", javax.management.j2ee.statistics; type="spec", org.omg.stub.javax.management.j2ee; type="spec"
edition=base
-bundles=com.ibm.websphere.javaee.management.j2ee.1.1; location:=dev/api/spec/; mavenCoordinates="javax.management.j2ee:javax.management.j2ee-api:1.1.1"
Subsystem-Version=1.1
