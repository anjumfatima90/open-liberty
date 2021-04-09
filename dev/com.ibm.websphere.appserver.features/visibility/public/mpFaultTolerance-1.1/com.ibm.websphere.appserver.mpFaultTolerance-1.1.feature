#
#Fri Apr 09 10:53:36 CDT 2021
symbolicName=com.ibm.websphere.appserver.mpFaultTolerance-1.1
visibility=public
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-App-ForceRestart=install, uninstall
WLP-DisableAllFeatures-OnConflict=false
kind=ga
singleton=true
IBM-API-Package=org.eclipse.microprofile.faulttolerance.exceptions;  type\="stable", org.eclipse.microprofile.faulttolerance;  type\="stable"
WLP-Activation-Type=parallel
edition=core
-features=com.ibm.websphere.appserver.mpConfig-1.3;ibm.tolerates\:\="1.4",io.openliberty.mpCompatible-0.0,com.ibm.websphere.appserver.org.eclipse.microprofile.faulttolerance-1.1,com.ibm.websphere.appserver.concurrent-1.0
-bundles=com.ibm.ws.net.jodah.failsafe.1.0.4; apiJar\=false; location\:\="lib/", com.ibm.ws.microprofile.faulttolerance; apiJar\=false; location\:\="lib/", com.ibm.ws.microprofile.faulttolerance.1.0; apiJar\=false; location\:\="lib/", com.ibm.ws.microprofile.faulttolerance.spi; apiJar\=false; location\:\="lib/"
Subsystem-Name=MicroProfile Fault Tolerance 1.1
IBM-ShortName=mpFaultTolerance-1.1
