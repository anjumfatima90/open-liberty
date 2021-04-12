#
#Mon Apr 12 14:46:11 CDT 2021
symbolicName=com.ibm.websphere.appserver.org.eclipse.microprofile.opentracing-2.0
visibility=private
-include=~${workspace}/cnf/resources/bnd/feature.props
singleton=true
kind=ga
WLP-Activation-Type=parallel
-features=io.openliberty.mpCompatible-4.0
edition=core
-bundles=io.openliberty.org.eclipse.microprofile.opentracing.2.0; location\:\="dev/api/stable/,lib/"; mavenCoordinates\="org.eclipse.microprofile.opentracing\:microprofile-opentracing-api\:2.0"
