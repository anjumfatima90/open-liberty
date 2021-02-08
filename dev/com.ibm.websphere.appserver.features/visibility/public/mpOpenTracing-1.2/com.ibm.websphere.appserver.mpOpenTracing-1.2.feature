#
#Mon Feb 08 16:22:51 CST 2021
symbolicName=com.ibm.websphere.appserver.mpOpenTracing-1.2
visibility=public
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-App-ForceRestart=install, uninstall
WLP-DisableAllFeatures-OnConflict=false
kind=ga
singleton=true
IBM-API-Package=org.eclipse.microprofile.opentracing; type\="stable"
WLP-Activation-Type=parallel
edition=core
-features=com.ibm.websphere.appserver.opentracing-1.2,io.openliberty.mpCompatible-0.0,com.ibm.websphere.appserver.org.eclipse.microprofile.opentracing-1.2,com.ibm.websphere.appserver.cdi-1.2;ibm.tolerates\:\="2.0",com.ibm.websphere.appserver.jaxrs-2.0;ibm.tolerates\:\="2.1"
-bundles=com.ibm.ws.microprofile.opentracing.1.2
Subsystem-Name=MicroProfile OpenTracing 1.2
IBM-ShortName=mpOpenTracing-1.2
