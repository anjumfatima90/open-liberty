#
#Mon Apr 12 14:46:11 CDT 2021
symbolicName=com.ibm.websphere.appserver.concurrent-1.0
visibility=public
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-API-Service=javax.enterprise.concurrent.ContextService; id\="DefaultContextService", javax.enterprise.concurrent.ManagedExecutorService; id\="DefaultManagedExecutorService", javax.enterprise.concurrent.ManagedScheduledExecutorService; id\="DefaultManagedScheduledExecutorService"
WLP-DisableAllFeatures-OnConflict=false
kind=ga
singleton=true
IBM-API-Package=javax.enterprise.concurrent; type\="spec"
WLP-Activation-Type=parallel
edition=core
-features=com.ibm.websphere.appserver.appLifecycle-1.0,com.ibm.websphere.appserver.containerServices-1.0,com.ibm.websphere.appserver.contextService-1.0,com.ibm.websphere.appserver.eeCompatible-7.0;ibm.tolerates\:\="6.0,8.0",com.ibm.websphere.appserver.concurrencyPolicy-1.0,com.ibm.websphere.appserver.org.eclipse.microprofile.contextpropagation-1.0;ibm.tolerates\:\="1.2"
-bundles=com.ibm.ws.javaee.platform.defaultresource, com.ibm.websphere.javaee.concurrent.1.0; location\:\="dev/api/spec/,lib/"; mavenCoordinates\="javax.enterprise.concurrent\:javax.enterprise.concurrent-api\:1.0", com.ibm.ws.resource, com.ibm.ws.concurrent
Subsystem-Name=Concurrency Utilities for Java EE 1.0
IBM-ShortName=concurrent-1.0
