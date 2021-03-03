#
#Wed Mar 03 12:43:54 CST 2021
symbolicName=com.ibm.websphere.appserver.mpOpenTracing-1.3
visibility=public
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-App-ForceRestart=install, uninstall
WLP-DisableAllFeatures-OnConflict=false
kind=ga
singleton=true
IBM-API-Package=org.eclipse.microprofile.opentracing; type\="stable"
WLP-Activation-Type=parallel
edition=core
-features=com.ibm.websphere.appserver.opentracing-1.3,com.ibm.websphere.appserver.mpConfig-1.3;ibm.tolerates\:\="1.4",io.openliberty.mpCompatible-0.0,com.ibm.websphere.appserver.org.eclipse.microprofile.opentracing-1.3
-bundles=com.ibm.ws.microprofile.opentracing.1.3
Subsystem-Name=MicroProfile OpenTracing 1.3
IBM-ShortName=mpOpenTracing-1.3
