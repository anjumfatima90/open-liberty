#
#Wed Mar 03 12:43:55 CST 2021
visibility=private
symbolicName=com.ibm.websphere.appserver.persistentExecutorSubset-1.0
kind=ga
-bundles=com.ibm.ws.javaee.platform.defaultresource, com.ibm.websphere.javaee.concurrent.1.0; location\:\="dev/api/spec/,lib/"; mavenCoordinates\="javax.enterprise.concurrent\:javax.enterprise.concurrent-api\:1.0", com.ibm.ws.resource, com.ibm.ws.concurrent.persistent
-include=~${workspace}/cnf/resources/bnd/feature.props
edition=base
-features=com.ibm.websphere.appserver.appLifecycle-1.0,com.ibm.websphere.appserver.transaction-1.2,com.ibm.websphere.appserver.javax.annotation-1.2;ibm.tolerates\:\="1.3",com.ibm.ws.persistence-1.0,com.ibm.websphere.appserver.contextService-1.0,com.ibm.websphere.appserver.jdbc-4.1;ibm.tolerates\:\="4.2,4.3"
WLP-DisableAllFeatures-OnConflict=false
