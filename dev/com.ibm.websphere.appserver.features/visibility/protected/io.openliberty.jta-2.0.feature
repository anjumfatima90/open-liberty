#
#Mon Apr 12 14:46:11 CDT 2021
symbolicName=io.openliberty.jta-2.0
visibility=protected
-include=~${workspace}/cnf/resources/bnd/feature.props
kind=beta
singleton=true
IBM-API-Package=jakarta.transaction;  type\="spec", javax.transaction.xa;  type\="spec"
WLP-Activation-Type=parallel
edition=core
-features=com.ibm.websphere.appserver.eeCompatible-9.0,io.openliberty.jakarta.cdi-3.0
-bundles=io.openliberty.jakarta.transaction.2.0; location\:\="dev/api/spec/,lib/"; mavenCoordinates\="jakarta.transaction\:jakarta.transaction-api\:2.0.0"
-files=dev/api/ibm/javadoc/com.ibm.websphere.appserver.api.transaction_1.1-javadoc.zip
-jars=com.ibm.websphere.appserver.api.transaction.2.0.jakarta; location\:\=dev/api/ibm/
