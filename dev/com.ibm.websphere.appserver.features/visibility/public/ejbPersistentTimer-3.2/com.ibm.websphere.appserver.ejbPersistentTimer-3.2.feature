#
#Mon Apr 12 14:46:11 CDT 2021
symbolicName=com.ibm.websphere.appserver.ejbPersistentTimer-3.2
visibility=public
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-App-ForceRestart=install, uninstall
WLP-DisableAllFeatures-OnConflict=false
kind=ga
edition=base
-features=com.ibm.websphere.appserver.transaction-1.2,com.ibm.websphere.appserver.jdbc-4.1;ibm.tolerates\:\="4.2,4.3",com.ibm.websphere.appserver.ejbLite-3.2,com.ibm.websphere.appserver.persistentExecutorSubset-1.0
-bundles=com.ibm.ws.ejbcontainer.timer.persistent
Subsystem-Name=Enterprise JavaBeans Persistent Timers 3.2
IBM-ShortName=ejbPersistentTimer-3.2
