#
#Mon Apr 12 14:46:11 CDT 2021
symbolicName=com.ibm.websphere.appserver.javax.connector-1.6
visibility=protected
-include=~${workspace}/cnf/resources/bnd/feature.props
WLP-DisableAllFeatures-OnConflict=false
kind=ga
singleton=true
IBM-API-Package=javax.resource; type\="spec", javax.resource.cci; type\="spec", javax.resource.spi; type\="spec", javax.resource.spi.endpoint; type\="spec", javax.resource.spi.security; type\="spec", javax.resource.spi.work; type\="spec"
WLP-Activation-Type=parallel
edition=base
-features=com.ibm.websphere.appserver.eeCompatible-6.0,com.ibm.websphere.appserver.javax.connector.internal-1.6
-bundles=com.ibm.websphere.javaee.connector.1.6; location\:\="dev/api/spec/,lib/"; mavenCoordinates\="javax.resource\:javax.resource-api\:1.7"
