#
#Mon Apr 12 14:46:11 CDT 2021
symbolicName=com.ibm.websphere.appserver.mpRestClient-2.0
visibility=public
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-App-ForceRestart=install, uninstall
kind=ga
singleton=true
IBM-API-Package=org.eclipse.microprofile.rest.client; type\="stable", org.eclipse.microprofile.rest.client.annotation; type\="stable", org.eclipse.microprofile.rest.client.ext; type\="stable", org.eclipse.microprofile.rest.client.inject; type\="stable", org.eclipse.microprofile.rest.client.spi; type\="stable", org.reactivestreams; type\="stable";
WLP-Activation-Type=parallel
edition=core
-features=com.ibm.websphere.appserver.jsonp-1.1,com.ibm.websphere.appserver.mpConfig-2.0,com.ibm.websphere.appserver.javax.annotation-1.3,com.ibm.websphere.appserver.jaxrsClient-2.1,io.openliberty.mpCompatible-4.0,com.ibm.websphere.appserver.javax.cdi-2.0,com.ibm.websphere.appserver.org.reactivestreams.reactive-streams-1.0,com.ibm.websphere.appserver.org.eclipse.microprofile.rest.client-2.0
-bundles=com.ibm.ws.org.apache.cxf.cxf.rt.rs.mp.client.3.3; apiJar\=false; location\:\="lib/"
Subsystem-Name=MicroProfile Rest Client 2.0
IBM-ShortName=mpRestClient-2.0
