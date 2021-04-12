#
#Mon Apr 12 14:46:11 CDT 2021
symbolicName=io.openliberty.jakarta.concurrency-2.0
visibility=private
-include=~${workspace}/cnf/resources/bnd/feature.props
singleton=true
kind=beta
WLP-Activation-Type=parallel
-features=com.ibm.websphere.appserver.eeCompatible-9.0
edition=core
-bundles=io.openliberty.jakarta.concurrency.2.0; location\:\="dev/api/spec/,lib/"; mavenCoordinates\="jakarta.enterprise.concurrent\:jakarta.enterprise.concurrent-api\:2.0.0"
