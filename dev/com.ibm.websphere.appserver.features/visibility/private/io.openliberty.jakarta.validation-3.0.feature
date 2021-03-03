#
#Wed Mar 03 12:43:55 CST 2021
symbolicName=io.openliberty.jakarta.validation-3.0
visibility=private
-include=~${workspace}/cnf/resources/bnd/feature.props
singleton=true
kind=beta
WLP-Activation-Type=parallel
-features=com.ibm.websphere.appserver.eeCompatible-9.0
edition=core
-bundles=io.openliberty.jakarta.validation.3.0; location\:\="dev/api/spec/,lib/"; mavenCoordinates\="jakarta.validation\:jakarta.validation-api\:3.0.0"
