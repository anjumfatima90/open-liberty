#
#Mon Apr 12 14:46:11 CDT 2021
symbolicName=com.ibm.websphere.appserver.restHandler-1.0
visibility=protected
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-App-ForceRestart=uninstall, install
WLP-DisableAllFeatures-OnConflict=false
kind=ga
edition=core
-features=com.ibm.websphere.appserver.json-1.0,com.ibm.wsspi.appserver.webBundleSecurity-1.0,com.ibm.wsspi.appserver.webBundle-1.0,com.ibm.websphere.appserver.ssl-1.0,com.ibm.websphere.appserver.servlet-3.0;ibm.tolerates\:\="3.1,4.0,5.0",com.ibm.websphere.appserver.adminSecurity-1.0;ibm.tolerates\:\="2.0",com.ibm.websphere.appserver.httptransport-1.0
-bundles=com.ibm.ws.org.joda.time.1.6.2, com.ibm.websphere.jsonsupport, com.ibm.websphere.rest.handler
IBM-SPI-Package=com.ibm.wsspi.rest.handler; type\="ibm-spi", com.ibm.wsspi.rest.handler.helper; type\="ibm-spi"
-files=dev/spi/ibm/javadoc/com.ibm.websphere.appserver.spi.restHandler_2.0-javadoc.zip
-jars=com.ibm.websphere.appserver.spi.restHandler; location\:\=dev/spi/ibm/
