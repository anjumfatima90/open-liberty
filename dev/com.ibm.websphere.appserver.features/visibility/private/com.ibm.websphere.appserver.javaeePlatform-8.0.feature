#
#Wed Mar 03 12:43:55 CST 2021
symbolicName=com.ibm.websphere.appserver.javaeePlatform-8.0
-include=~${workspace}/cnf/resources/bnd/feature.props
WLP-DisableAllFeatures-OnConflict=false
kind=ga
WLP-Activation-Type=parallel
-features=com.ibm.websphere.appserver.javaeePlatform-7.0
edition=core
-bundles=com.ibm.ws.javaee.platform.v8, com.ibm.ws.javaee.version
IBM-Process-Types=client, server
