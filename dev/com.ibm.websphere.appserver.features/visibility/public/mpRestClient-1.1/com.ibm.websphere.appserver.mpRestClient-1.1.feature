#
#Fri Apr 09 10:53:36 CDT 2021
symbolicName=com.ibm.websphere.appserver.mpRestClient-1.1
visibility=public
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-App-ForceRestart=install, uninstall
WLP-DisableAllFeatures-OnConflict=false
kind=ga
singleton=true
IBM-API-Package=org.eclipse.microprofile.rest.client; type\="stable", org.eclipse.microprofile.rest.client.annotation; type\="stable", org.eclipse.microprofile.rest.client.ext; type\="stable", org.eclipse.microprofile.rest.client.inject; type\="stable", org.eclipse.microprofile.rest.client.spi; type\="stable"
WLP-Activation-Type=parallel
edition=core
-features=com.ibm.websphere.appserver.jsonp-1.0;ibm.tolerates\:\="1.1",io.openliberty.mpCompatible-0.0,com.ibm.websphere.appserver.javax.annotation-1.2;ibm.tolerates\:\="1.3",com.ibm.websphere.appserver.javax.cdi-1.2;ibm.tolerates\:\="2.0",com.ibm.websphere.appserver.jaxrsClient-2.0;ibm.tolerates\:\="2.1",com.ibm.websphere.appserver.org.reactivestreams.reactive-streams-1.0,com.ibm.websphere.appserver.org.eclipse.microprofile.rest.client-1.1
-bundles=com.ibm.ws.org.apache.cxf.cxf.rt.rs.mp.client.3.2; apiJar\=false; location\:\="lib/"
Subsystem-Name=MicroProfile Rest Client 1.1
IBM-ShortName=mpRestClient-1.1
