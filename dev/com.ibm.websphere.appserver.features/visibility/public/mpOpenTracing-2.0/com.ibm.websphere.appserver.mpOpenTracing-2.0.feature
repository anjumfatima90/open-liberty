#
#Mon Feb 08 16:22:51 CST 2021
symbolicName=com.ibm.websphere.appserver.mpOpenTracing-2.0
visibility=public
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-App-ForceRestart=install, uninstall
kind=beta
singleton=true
IBM-API-Package=org.eclipse.microprofile.opentracing; type\="stable"
WLP-Activation-Type=parallel
edition=core
-features=com.ibm.websphere.appserver.opentracing-2.0,com.ibm.websphere.appserver.mpConfig-2.0,com.ibm.websphere.appserver.org.eclipse.microprofile.opentracing-2.0,io.openliberty.mpCompatible-4.0
-bundles=io.openliberty.microprofile.opentracing.2.0.internal
Subsystem-Name=MicroProfile OpenTracing 2.0
IBM-ShortName=mpOpenTracing-2.0
