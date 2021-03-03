#
#Wed Mar 03 12:43:55 CST 2021
visibility=private
symbolicName=io.openliberty.persistentExecutorSubset-2.0
kind=beta
-bundles=com.ibm.ws.javaee.platform.defaultresource, io.openliberty.jakarta.concurrency.2.0; location\:\="dev/api/spec/,lib/"; mavenCoordinates\="jakarta.enterprise.concurrent\:jakarta.enterprise.concurrent-api\:2.0.0", com.ibm.ws.resource, com.ibm.ws.concurrent.persistent.jakarta
-include=~${workspace}/cnf/resources/bnd/feature.props
edition=base
-features=com.ibm.websphere.appserver.appLifecycle-1.0,com.ibm.websphere.appserver.jdbc-4.2;ibm.tolerates\:\="4.3,4.1",io.openliberty.jakarta.annotation-2.0,com.ibm.websphere.appserver.contextService-1.0,io.openliberty.persistenceService-2.0,com.ibm.websphere.appserver.transaction-2.0
WLP-Activation-Type=parallel
