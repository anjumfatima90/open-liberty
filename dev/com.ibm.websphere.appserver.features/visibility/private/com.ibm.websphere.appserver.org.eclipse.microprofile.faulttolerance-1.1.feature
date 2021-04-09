#
#Fri Apr 09 10:53:36 CDT 2021
symbolicName=com.ibm.websphere.appserver.org.eclipse.microprofile.faulttolerance-1.1
-include=~${workspace}/cnf/resources/bnd/feature.props
WLP-DisableAllFeatures-OnConflict=false
singleton=true
kind=ga
WLP-Activation-Type=parallel
-features=io.openliberty.mpCompatible-0.0,com.ibm.websphere.appserver.javax.cdi-1.2;ibm.tolerates\:\="2.0"
edition=core
-bundles=com.ibm.websphere.org.eclipse.microprofile.faulttolerance.1.1; location\:\="dev/api/stable/,lib/"; mavenCoordinates\="org.eclipse.microprofile.fault-tolerance\:microprofile-fault-tolerance-api\:1.1"
