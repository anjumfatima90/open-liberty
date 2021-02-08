#
#Mon Feb 08 16:22:51 CST 2021
symbolicName=com.ibm.websphere.appserver.org.eclipse.microprofile.graphql-1.0
-include=~${workspace}/cnf/resources/bnd/feature.props
WLP-DisableAllFeatures-OnConflict=false
singleton=true
kind=ga
WLP-Activation-Type=parallel
-features=io.openliberty.mpCompatible-0.0;ibm.tolerates\:\="4.0"
edition=core
-bundles=com.ibm.websphere.org.eclipse.microprofile.graphql.1.0; location\:\="dev/api/stable/,lib/"; mavenCoordinates\="org.eclipse.microprofile.metrics\:microprofile-metrics-api\:1.0"
