#
#Fri Apr 09 10:53:36 CDT 2021
symbolicName=com.ibm.websphere.appserver.mpOpenTracing-1.0
visibility=public
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-App-ForceRestart=install, uninstall
WLP-DisableAllFeatures-OnConflict=false
kind=ga
singleton=true
IBM-API-Package=org.eclipse.microprofile.opentracing; type\="stable"
WLP-Activation-Type=parallel
edition=core
-features=com.ibm.websphere.appserver.opentracing-1.0,io.openliberty.mpCompatible-0.0,com.ibm.websphere.appserver.org.eclipse.microprofile.opentracing-1.0,com.ibm.websphere.appserver.cdi-1.2;ibm.tolerates\:\="2.0",com.ibm.websphere.appserver.jaxrs-2.0;ibm.tolerates\:\="2.1"
-bundles=com.ibm.ws.microprofile.opentracing
Subsystem-Name=MicroProfile OpenTracing 1.0
IBM-ShortName=mpOpenTracing-1.0
