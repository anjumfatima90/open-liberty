#
#Wed Mar 03 12:43:55 CST 2021
symbolicName=com.ibm.websphere.appclient.appClient-1.0
visibility=private
-include=~${workspace}/cnf/resources/bnd/feature.props
WLP-DisableAllFeatures-OnConflict=false
kind=ga
WLP-Activation-Type=parallel
-features=com.ibm.websphere.appserver.appmanager-1.0,com.ibm.websphere.appserver.iiopclient-1.0,com.ibm.websphere.appserver.injection-1.0,com.ibm.websphere.appclient.client-1.0,com.ibm.websphere.appserver.javaeePlatform-7.0
edition=base
-bundles=com.ibm.ws.clientcontainer, com.ibm.ws.app.manager.war, com.ibm.ws.app.manager.client, com.ibm.ws.managedobject
