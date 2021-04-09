#
#Fri Apr 09 10:53:36 CDT 2021
symbolicName=com.ibm.websphere.appserver.org.eclipse.microprofile.jwt-1.2
visibility=private
-include=~${workspace}/cnf/resources/bnd/feature.props
singleton=true
kind=ga
WLP-Activation-Type=parallel
-features=io.openliberty.mpCompatible-4.0
edition=core
-bundles=io.openliberty.org.eclipse.microprofile.jwt.1.2; location\:\="dev/api/stable/,lib/"; mavenCoordinates\="org.eclipse.microprofile.jwt\:microprofile-jwt-auth-api\:1.2"
