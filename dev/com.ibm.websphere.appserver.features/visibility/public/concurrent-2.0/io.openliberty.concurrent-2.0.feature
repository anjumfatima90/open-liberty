#
#Wed Mar 03 12:43:54 CST 2021
symbolicName=io.openliberty.concurrent-2.0
visibility=public
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-API-Service=jakarta.enterprise.concurrent.ContextService; id\="DefaultContextService", jakarta.enterprise.concurrent.ManagedExecutorService; id\="DefaultManagedExecutorService", jakarta.enterprise.concurrent.ManagedScheduledExecutorService; id\="DefaultManagedScheduledExecutorService"
kind=beta
singleton=true
IBM-API-Package=jakarta.enterprise.concurrent; type\="spec"
WLP-Activation-Type=parallel
edition=core
-features=com.ibm.websphere.appserver.appLifecycle-1.0,io.openliberty.jakartaeePlatform-9.0,com.ibm.websphere.appserver.containerServices-1.0,com.ibm.websphere.appserver.eeCompatible-9.0,com.ibm.websphere.appserver.contextService-1.0,io.openliberty.jakarta.concurrency-2.0,com.ibm.websphere.appserver.concurrencyPolicy-1.0,com.ibm.websphere.appserver.org.eclipse.microprofile.contextpropagation-1.0;ibm.tolerates\:\="1.2"
-bundles=com.ibm.ws.concurrent.jakarta, com.ibm.ws.javaee.platform.defaultresource, com.ibm.ws.resource
Subsystem-Name=Jakarta Concurrency 2.0
IBM-ShortName=concurrent-2.0
