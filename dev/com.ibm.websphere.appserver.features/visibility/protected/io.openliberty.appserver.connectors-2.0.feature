#
#Mon Feb 08 16:22:51 CST 2021
symbolicName=io.openliberty.appserver.connectors-2.0
visibility=protected
-include=~${workspace}/cnf/resources/bnd/feature.props
singleton=true
kind=beta
IBM-API-Package=jakarta.resource; type\="spec", jakarta.resource.cci; type\="spec", jakarta.resource.spi; type\="spec", jakarta.resource.spi.endpoint; type\="spec", jakarta.resource.spi.security; type\="spec", jakarta.resource.spi.work; type\="spec"
WLP-Activation-Type=parallel
edition=base
-features=com.ibm.websphere.appserver.eeCompatible-9.0,io.openliberty.jakarta.connectors-2.0
-bundles=io.openliberty.jakarta.connectors.2.0; location\:\="dev/api/spec/,lib/"; mavenCoordinates\="jakarta.resource\:jakarta.resource-api\:2.0.0"
