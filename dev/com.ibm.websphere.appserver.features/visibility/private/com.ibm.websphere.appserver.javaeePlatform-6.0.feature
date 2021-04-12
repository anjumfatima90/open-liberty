#
#Mon Apr 12 14:46:11 CDT 2021
symbolicName=com.ibm.websphere.appserver.javaeePlatform-6.0
-include=~${workspace}/cnf/resources/bnd/feature.props
WLP-DisableAllFeatures-OnConflict=false
kind=ga
WLP-Activation-Type=parallel
-features=com.ibm.websphere.appserver.appmanager-1.0,com.ibm.websphere.appserver.classloading-1.0
edition=core
-bundles=com.ibm.ws.javaee.version, com.ibm.ws.app.manager.module, com.ibm.ws.security.java2sec
IBM-Process-Types=client, server
