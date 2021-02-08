#
#Mon Feb 08 16:22:51 CST 2021
symbolicName=com.ibm.wsspi.appserver.webBundle-1.0
visibility=protected
-include=~${workspace}/cnf/resources/bnd/feature.props
WLP-DisableAllFeatures-OnConflict=false
kind=ga
WLP-Activation-Type=parallel
edition=core
-features=com.ibm.websphere.appserver.servlet-3.0;ibm.tolerates\:\="3.1,4.0,5.0"
Subsystem-Name=OSGi Application
-bundles=com.ibm.ws.eba.wab.integrator
IBM-SPI-Package=com.ibm.wsspi.wab.configure
-files=dev/spi/ibm/javadoc/com.ibm.websphere.appserver.spi.wab.configure_1.0-javadoc.zip
-jars=com.ibm.websphere.appserver.spi.wab.configure; location\:\=dev/spi/ibm/
