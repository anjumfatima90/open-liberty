#
#Mon Apr 12 14:46:11 CDT 2021
symbolicName=io.openliberty.jakarta.persistence-3.0
-include=~${workspace}/cnf/resources/bnd/feature.props
singleton=true
kind=beta
WLP-Activation-Type=parallel
edition=core
-features=io.openliberty.jakarta.persistence.base-3.0,com.ibm.websphere.appserver.eeCompatible-9.0
-bundles=io.openliberty.jakarta.persistence.api.3.0
IBM-Process-Types=server, client
-jars=io.openliberty.jakarta.persistence.3.0; location\:\=dev/api/spec/; mavenCoordinates\="jakarta.persistence\:jakarta.persistence-api\:3.0.0"
