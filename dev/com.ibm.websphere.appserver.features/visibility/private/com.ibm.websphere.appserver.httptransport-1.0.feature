#
#Fri Apr 09 10:53:36 CDT 2021
symbolicName=com.ibm.websphere.appserver.httptransport-1.0
-include=~${workspace}/cnf/resources/bnd/feature.props
WLP-DisableAllFeatures-OnConflict=false
kind=ga
WLP-Activation-Type=parallel
edition=core
-features=com.ibm.websphere.appserver.channelfw-1.0
-bundles=com.ibm.ws.transport.http
IBM-SPI-Package=com.ibm.wsspi.http, com.ibm.wsspi.http.ee8
-files=dev/spi/ibm/javadoc/com.ibm.websphere.appserver.spi.httptransport_4.1-javadoc.zip
Subsystem-Version=1.0
-jars=com.ibm.websphere.appserver.spi.httptransport; location\:\=dev/spi/ibm/
