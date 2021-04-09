#
#Fri Apr 09 10:53:36 CDT 2021
symbolicName=com.ibm.websphere.appserver.org.eclipse.microprofile.health-2.2
-include=~${workspace}/cnf/resources/bnd/feature.props
WLP-DisableAllFeatures-OnConflict=false
singleton=true
kind=ga
WLP-Activation-Type=parallel
-features=io.openliberty.mpCompatible-0.0
edition=core
-bundles=com.ibm.websphere.org.eclipse.microprofile.health.2.2; location\:\="dev/api/stable/,lib/"; mavenCoordinates\="org.eclipse.microprofile.health\:microprofile-health-api\:2.2"
