symbolicName=com.ibm.websphere.appserver.org.eclipse.microprofile.rest.client-1.4
-include=~${workspace}/cnf/resources/bnd/feature.props
WLP-DisableAllFeatures-OnConflict=false
singleton=true
kind=ga
WLP-Activation-Type=parallel
-features=io.openliberty.mpCompatible-0.0,com.ibm.websphere.appserver.javax.annotation-1.3,com.ibm.websphere.appserver.javax.cdi-2.0,com.ibm.websphere.appserver.javax.jaxrs-2.1,com.ibm.websphere.appserver.org.eclipse.microprofile.config-1.3;ibm.tolerates:="1.4"
edition=core
-bundles=com.ibm.websphere.org.eclipse.microprofile.rest.client.1.4; location:="dev/api/stable/,lib/"; mavenCoordinates="org.eclipse.microprofile.rest.client:microprofile-rest-client-api:1.4-RC2"
