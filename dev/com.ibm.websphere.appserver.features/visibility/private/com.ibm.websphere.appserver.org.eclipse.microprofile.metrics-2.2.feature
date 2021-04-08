symbolicName=com.ibm.websphere.appserver.org.eclipse.microprofile.metrics-2.2
kind=ga
-bundles=com.ibm.websphere.org.eclipse.microprofile.metrics.2.2; location:="dev/api/stable/,lib/"; mavenCoordinates="org.eclipse.microprofile.metrics:microprofile-metrics-api:2.2"
-include=~${workspace}/cnf/resources/bnd/feature.props
edition=core
-features=io.openliberty.mpCompatible-0.0
singleton=true
WLP-DisableAllFeatures-OnConflict=false
