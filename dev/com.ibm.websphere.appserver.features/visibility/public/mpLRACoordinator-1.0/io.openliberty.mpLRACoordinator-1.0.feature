#
#Mon Apr 12 14:46:11 CDT 2021
symbolicName=io.openliberty.mpLRACoordinator-1.0
visibility=public
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-App-ForceRestart=install, uninstall
kind=beta
singleton=true
IBM-API-Package=org.eclipse.microprofile.lra.annotation; type\="stable", org.eclipse.microprofile.lra.annotation.ws.rs; type\="stable";
WLP-Activation-Type=parallel
edition=core
-features=com.ibm.websphere.appserver.servlet-4.0,com.ibm.websphere.appserver.jaxrs-2.1,io.openliberty.mpCompatible-4.0;ibm.tolerates\:\="0.0",io.openliberty.org.eclipse.microprofile.lra-1.0
-bundles=io.openliberty.microprofile.lra.coordinator.1.0.internal
Subsystem-Name=MicroProfile Long Running Actions Coordinator 1.0
-files=lib/mpLRACoordinator_5.10.6.jar
IBM-ShortName=mpLRACoordinator-1.0
