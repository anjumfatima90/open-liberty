#
#Mon Apr 12 14:46:11 CDT 2021
symbolicName=com.ibm.websphere.appserver.javaeePlatform-7.0
-include=~${workspace}/cnf/resources/bnd/feature.props
WLP-DisableAllFeatures-OnConflict=false
kind=ga
WLP-Activation-Type=parallel
-features=com.ibm.websphere.appserver.javaeePlatform-6.0
edition=core
-bundles=com.ibm.ws.javaee.platform.defaultresource, com.ibm.ws.javaee.platform.v7, com.ibm.ws.javaee.version
IBM-Process-Types=client, server
