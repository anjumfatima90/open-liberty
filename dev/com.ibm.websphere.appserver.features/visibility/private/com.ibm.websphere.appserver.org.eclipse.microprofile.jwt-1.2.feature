#
#Mon Feb 08 16:22:51 CST 2021
symbolicName=com.ibm.websphere.appserver.org.eclipse.microprofile.jwt-1.2
visibility=private
-include=~${workspace}/cnf/resources/bnd/feature.props
singleton=true
kind=beta
WLP-Activation-Type=parallel
-features=io.openliberty.mpCompatible-4.0
edition=core
-bundles=io.openliberty.org.eclipse.microprofile.jwt.1.2; location\:\="dev/api/stable/,lib/"; mavenCoordinates\="org.eclipse.microprofile.jwt\:microprofile-jwt-auth-api\:1.2"
