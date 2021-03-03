#
#Wed Mar 03 12:43:54 CST 2021
symbolicName=com.ibm.websphere.appserver.ejbRemote-3.2
visibility=public
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-App-ForceRestart=install, uninstall
WLP-DisableAllFeatures-OnConflict=false
kind=ga
IBM-API-Package=com.ibm.ws.ejb.portable; type\="internal"
edition=base
-features=com.ibm.websphere.appserver.transaction-1.2,com.ibm.websphere.appserver.iioptransport-1.0,com.ibm.websphere.appserver.ejbLite-3.2
-bundles=com.ibm.ws.ejbcontainer.remote
Subsystem-Name=Enterprise JavaBeans Remote 3.2
-files=clients/ejbRemotePortable.jar
IBM-ShortName=ejbRemote-3.2
