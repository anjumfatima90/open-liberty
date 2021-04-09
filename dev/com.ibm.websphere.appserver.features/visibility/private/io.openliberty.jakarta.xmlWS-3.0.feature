#
#Fri Apr 09 10:53:36 CDT 2021
symbolicName=io.openliberty.jakarta.xmlWS-3.0
kind=beta
-bundles=io.openliberty.jakarta.xmlWS.3.0; location\:\="dev/api/spec/,lib/"; mavenCoordinates\="jakarta.xml.ws\:jakarta.xml.ws-api\:3.0.0",io.openliberty.jakarta.soap.2.0; location\:\="dev/api/spec/,lib/"; mavenCoordinates\="jakarta.xml.soap\:jakarta.xml.soap-api\:2.0.0",io.openliberty.jakarta.jws.3.0; location\:\="dev/api/spec/,lib/"; mavenCoordinates\="jakarta.jws\:jakarta.jws-api\:3.0.0"
-include=~${workspace}/cnf/resources/bnd/feature.props
edition=core
-features=io.openliberty.jakarta.xmlBinding-3.0;apiJar\=false,com.ibm.websphere.appserver.eeCompatible-9.0
singleton=true
WLP-Activation-Type=parallel
