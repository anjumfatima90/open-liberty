#
#Wed Mar 03 12:43:54 CST 2021
symbolicName=com.ibm.websphere.appserver.mdb-3.2
visibility=public
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-App-ForceRestart=install, uninstall
WLP-DisableAllFeatures-OnConflict=false
kind=ga
singleton=true
IBM-API-Package=com.ibm.ws.ejbcontainer.mdb; type\="internal"
Subsystem-Category=JavaEE7Application
edition=base
-features=com.ibm.websphere.appserver.transaction-1.2,com.ibm.websphere.appserver.ejbCore-1.0,com.ibm.websphere.appserver.jca-1.7,com.ibm.websphere.appserver.javax.ejb-3.2,com.ibm.websphere.appserver.javaeePlatform-7.0,com.ibm.websphere.appserver.javax.interceptor-1.2
Subsystem-Name=Message-Driven Beans 3.2
-bundles=com.ibm.ws.ejbcontainer.mdb, com.ibm.ws.ejbcontainer.v32
IBM-ShortName=mdb-3.2
