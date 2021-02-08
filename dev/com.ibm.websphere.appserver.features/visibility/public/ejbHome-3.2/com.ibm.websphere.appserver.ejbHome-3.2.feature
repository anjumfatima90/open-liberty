#
#Mon Feb 08 16:22:51 CST 2021
symbolicName=com.ibm.websphere.appserver.ejbHome-3.2
visibility=public
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-App-ForceRestart=install, uninstall
WLP-DisableAllFeatures-OnConflict=false
kind=ga
edition=base
-features=com.ibm.websphere.appserver.transaction-1.2,com.ibm.websphere.appserver.ejbLite-3.2
-bundles=com.ibm.ws.ejbcontainer.ejb2x
Subsystem-Name=Enterprise JavaBeans Home Interfaces 3.2
IBM-ShortName=ejbHome-3.2
