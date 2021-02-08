#
#Mon Feb 08 16:22:51 CST 2021
symbolicName=com.ibm.websphere.appserver.org.eclipse.microprofile.reactive.streams.operators-1.0
visibility=private
-include=~${workspace}/cnf/resources/bnd/feature.props
WLP-DisableAllFeatures-OnConflict=false
singleton=true
kind=ga
WLP-Activation-Type=parallel
edition=core
-features=io.openliberty.mpCompatible-0.0,com.ibm.websphere.appserver.classloading-1.0,com.ibm.websphere.appserver.org.reactivestreams.reactive-streams-1.0
-bundles=com.ibm.websphere.org.eclipse.microprofile.reactive.streams.operators.1.0; location\:\="dev/api/stable/,lib/"; mavenCoordinates\="org.eclipse.microprofile.reactive-streams-operators\:microprofile-reactive-streams-operators-api\:1.0"
