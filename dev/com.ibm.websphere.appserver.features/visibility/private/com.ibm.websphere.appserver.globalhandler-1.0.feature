symbolicName=com.ibm.websphere.appserver.globalhandler-1.0
visibility=private
-include=~${workspace}/cnf/resources/bnd/feature.props
WLP-DisableAllFeatures-OnConflict=false
kind=ga
WLP-Activation-Type=parallel
edition=core
-bundles=com.ibm.ws.webservices.handler
IBM-SPI-Package=com.ibm.wsspi.webservices.handler
-files=dev/spi/ibm/javadoc/com.ibm.websphere.appserver.spi.globalhandler_1.0-javadoc.zip
-jars=com.ibm.websphere.appserver.spi.globalhandler; location:=dev/spi/ibm/
