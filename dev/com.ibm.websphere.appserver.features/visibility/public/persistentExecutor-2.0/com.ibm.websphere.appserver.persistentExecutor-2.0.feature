#
#Fri Apr 09 10:53:36 CDT 2021
symbolicName=com.ibm.websphere.appserver.persistentExecutor-2.0
visibility=public
-include=~${workspace}/cnf/resources/bnd/feature.props
kind=noship
singleton=true
IBM-API-Package=com.ibm.websphere.concurrent.persistent; type\="ibm-api", com.ibm.websphere.concurrent.persistent.mbean; type\="ibm-api"
edition=full
-features=com.ibm.websphere.appserver.jdbc-4.2;ibm.tolerates\:\="4.3,4.1",com.ibm.websphere.appserver.appmanager-1.0,io.openliberty.concurrent-2.0,com.ibm.websphere.appserver.transaction-2.0,io.openliberty.persistentExecutorSubset-2.0
Subsystem-Name=Persistent Scheduled Executor 2.0
IBM-ShortName=persistentExecutor-2.0
