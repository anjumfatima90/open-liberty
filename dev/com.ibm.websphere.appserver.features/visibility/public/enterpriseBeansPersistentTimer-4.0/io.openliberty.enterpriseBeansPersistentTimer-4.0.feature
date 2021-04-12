#
#Mon Apr 12 14:46:11 CDT 2021
symbolicName=io.openliberty.enterpriseBeansPersistentTimer-4.0
visibility=public
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-App-ForceRestart=install, uninstall
kind=beta
WLP-AlsoKnownAs=ejbPersistentTimer-4.0
WLP-Activation-Type=parallel
edition=base
-features=com.ibm.websphere.appserver.jdbc-4.2;ibm.tolerates\:\="4.3",com.ibm.websphere.appserver.eeCompatible-9.0,io.openliberty.enterpriseBeansLite-4.0,io.openliberty.persistentExecutorSubset-2.0,com.ibm.websphere.appserver.transaction-2.0
-bundles=com.ibm.ws.ejbcontainer.timer.persistent.jakarta
Subsystem-Name=Jakarta Enterprise Beans 4.0 Persistent Timers
IBM-ShortName=enterpriseBeansPersistentTimer-4.0
