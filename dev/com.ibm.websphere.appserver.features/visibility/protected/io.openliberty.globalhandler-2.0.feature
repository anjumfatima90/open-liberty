#
#Wed Mar 03 12:43:55 CST 2021
symbolicName=io.openliberty.globalhandler-2.0
visibility=protected
-include=~${workspace}/cnf/resources/bnd/feature.props
WLP-DisableAllFeatures-OnConflict=false
kind=beta
WLP-Activation-Type=parallel
edition=core
-bundles=io.openliberty.webservices.handler.2.0
IBM-SPI-Package=com.ibm.wsspi.webservices.handler
-files=dev/spi/ibm/javadoc/com.ibm.websphere.appserver.spi.globalhandler_1.0-javadoc.zip
-jars=com.ibm.websphere.appserver.spi.globalhandler.jakarta; location\:\=dev/spi/ibm/
