symbolicName=com.ibm.websphere.appserver.mpContextPropagation-1.2
visibility=public
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-App-ForceRestart=install, uninstall
kind=ga
singleton=true
IBM-API-Package=org.eclipse.microprofile.context; type="stable", org.eclipse.microprofile.context.spi; type="stable"
edition=core
-features=io.openliberty.mpCompatible-4.0,com.ibm.websphere.appserver.org.eclipse.microprofile.contextpropagation-1.2,com.ibm.websphere.appserver.concurrent-1.0
-bundles=com.ibm.ws.microprofile.contextpropagation.1.0
Subsystem-Name=MicroProfile Context Propagation 1.2
IBM-ShortName=mpContextPropagation-1.2
