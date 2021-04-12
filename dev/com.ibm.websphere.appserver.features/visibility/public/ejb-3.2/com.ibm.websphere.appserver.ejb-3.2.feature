#
#Mon Apr 12 14:46:11 CDT 2021
symbolicName=com.ibm.websphere.appserver.ejb-3.2
visibility=public
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-App-ForceRestart=install, uninstall
WLP-DisableAllFeatures-OnConflict=false
kind=ga
Subsystem-Category=JavaEE7Application
edition=base
-features=com.ibm.websphere.appserver.transaction-1.2,com.ibm.websphere.appserver.ejbRemote-3.2,com.ibm.websphere.appserver.ejbPersistentTimer-3.2,com.ibm.websphere.appserver.ejbHome-3.2,com.ibm.websphere.appserver.jdbc-4.1;ibm.tolerates\:\="4.2,4.3",com.ibm.websphere.appserver.ejbLite-3.2,com.ibm.websphere.appserver.mdb-3.2
Subsystem-Name=Enterprise JavaBeans 3.2
IBM-ShortName=ejb-3.2
