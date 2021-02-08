#
#Mon Feb 08 16:22:51 CST 2021
symbolicName=com.ibm.websphere.appserver.mpFaultTolerance-2.0
visibility=public
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-App-ForceRestart=install, uninstall
WLP-DisableAllFeatures-OnConflict=false
kind=ga
singleton=true
IBM-API-Package=org.eclipse.microprofile.faulttolerance.exceptions;  type\="stable", org.eclipse.microprofile.faulttolerance;  type\="stable"
WLP-Activation-Type=parallel
edition=core
-features=io.openliberty.mpCompatible-0.0,com.ibm.websphere.appserver.mpConfig-1.1;ibm.tolerates\:\="1.2,1.3,1.4",com.ibm.websphere.appserver.org.eclipse.microprofile.faulttolerance-2.0,com.ibm.websphere.appserver.cdi-2.0,com.ibm.websphere.appserver.concurrent-1.0
-bundles=com.ibm.ws.microprofile.faulttolerance; apiJar\=false; location\:\="lib/", com.ibm.ws.microprofile.faulttolerance.2.0; apiJar\=false; location\:\="lib/", com.ibm.ws.microprofile.faulttolerance.spi; apiJar\=false; location\:\="lib/", com.ibm.ws.microprofile.faulttolerance.cdi; apiJar\=false; location\:\="lib/",com.ibm.ws.microprofile.faulttolerance.2.0.cdi.services; apiJar\=false; location\:\="lib/",com.ibm.ws.microprofile.faulttolerance.2.0.cdi; apiJar\=false; location\:\="lib/",
Subsystem-Name=MicroProfile Fault Tolerance 2.0
IBM-ShortName=mpFaultTolerance-2.0
