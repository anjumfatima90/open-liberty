#
#Mon Apr 12 14:46:11 CDT 2021
symbolicName=com.ibm.websphere.appserver.jmsMdb-3.2
visibility=public
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-App-ForceRestart=install, uninstall
superseded-by=mdb-3.2
WLP-DisableAllFeatures-OnConflict=false
kind=ga
edition=base
-features=com.ibm.websphere.appserver.transaction-1.2,com.ibm.websphere.appserver.mdb-3.2
-bundles=com.ibm.ws.ejbcontainer.mdb
Subsystem-Name=JMS Message-Driven Beans 3.2
IBM-ShortName=jmsMdb-3.2
