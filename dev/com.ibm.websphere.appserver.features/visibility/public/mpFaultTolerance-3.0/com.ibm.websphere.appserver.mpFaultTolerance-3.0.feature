#
#Wed Mar 03 12:43:55 CST 2021
symbolicName=com.ibm.websphere.appserver.mpFaultTolerance-3.0
visibility=public
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-App-ForceRestart=install, uninstall
kind=ga
singleton=true
IBM-API-Package=org.eclipse.microprofile.faulttolerance.exceptions;  type\="stable", org.eclipse.microprofile.faulttolerance;  type\="stable"
WLP-Activation-Type=parallel
edition=core
-features=com.ibm.websphere.appserver.mpConfig-2.0,com.ibm.websphere.appserver.org.eclipse.microprofile.faulttolerance-3.0,io.openliberty.mpCompatible-4.0,com.ibm.websphere.appserver.cdi-2.0
-bundles=com.ibm.ws.microprofile.faulttolerance; apiJar\=false; location\:\="lib/", com.ibm.ws.microprofile.faulttolerance.2.0; apiJar\=false; location\:\="lib/", com.ibm.ws.microprofile.faulttolerance.spi; apiJar\=false; location\:\="lib/", com.ibm.ws.microprofile.faulttolerance.cdi; apiJar\=false; location\:\="lib/",com.ibm.ws.microprofile.faulttolerance.2.0.cdi; apiJar\=false; location\:\="lib/",com.ibm.ws.microprofile.faulttolerance.2.1.cdi; apiJar\=false; location\:\="lib/",com.ibm.ws.microprofile.faulttolerance.2.1.cdi.services; apiJar\=false; location\:\="lib/",io.openliberty.microprofile.faulttolerance.3.0.internal.cdi; apiJar\=false; location\:\="lib/"
Subsystem-Name=MicroProfile Fault Tolerance 3.0
IBM-ShortName=mpFaultTolerance-3.0
