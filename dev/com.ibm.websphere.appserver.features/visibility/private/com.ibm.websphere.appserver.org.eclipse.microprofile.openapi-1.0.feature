symbolicName=com.ibm.websphere.appserver.org.eclipse.microprofile.openapi-1.0
-include=~${workspace}/cnf/resources/bnd/feature.props
WLP-DisableAllFeatures-OnConflict=false
singleton=true
kind=ga
WLP-Activation-Type=parallel
-features=io.openliberty.mpCompatible-0.0
edition=core
-bundles=com.ibm.websphere.org.eclipse.microprofile.openapi.1.0; location:="dev/api/stable/,lib/"; mavenCoordinates="org.eclipse.microprofile.openapi:microprofile-openapi-api:1.0.1"
