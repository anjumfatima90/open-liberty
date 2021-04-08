symbolicName=com.ibm.websphere.appserver.jta-1.1
visibility=protected
-include=~${workspace}/cnf/resources/bnd/feature.props
WLP-DisableAllFeatures-OnConflict=false
kind=ga
singleton=true
IBM-API-Package=javax.transaction;  type="spec", javax.transaction.xa;  type="spec"
edition=core
-features=com.ibm.websphere.appserver.eeCompatible-6.0;ibm.tolerates:="7.0,8.0"
-bundles=com.ibm.websphere.javaee.transaction.1.1; location:="dev/api/spec/,lib/"; mavenCoordinates="javax.transaction:jta:1.1"
-files=dev/api/ibm/javadoc/com.ibm.websphere.appserver.api.transaction_1.1-javadoc.zip
-jars=com.ibm.websphere.appserver.api.transaction; location:=dev/api/ibm/
