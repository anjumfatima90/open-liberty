#
#Mon Apr 12 14:46:11 CDT 2021
symbolicName=com.ibm.websphere.appserver.wsAtomicTransaction-1.2
Manifest-Version=1.0
visibility=public
-include=~${workspace}/cnf/resources/bnd/feature.props
WLP-DisableAllFeatures-OnConflict=false
kind=ga
edition=base
-features=com.ibm.websphere.appserver.transaction-1.2;ibm.tolerates\:\="1.1",com.ibm.wsspi.appserver.webBundleSecurity-1.0,com.ibm.websphere.appserver.jaxws-2.2,com.ibm.wsspi.appserver.webBundle-1.0,com.ibm.websphere.appserver.servlet-3.0;ibm.tolerates\:\="3.1,4.0"
-bundles=com.ibm.ws.wsat.common; start-phase\:\=CONTAINER_LATE, com.ibm.ws.wsat.webclient, com.ibm.ws.wsat.webservice, com.ibm.ws.jaxws.wsat
Subsystem-Name=WS-AT Service 1.2
IBM-SPI-Package=com.ibm.wsspi.webservices.wsat
-files=dev/spi/ibm/javadoc/com.ibm.websphere.appserver.spi.wsat_1.0-javadoc.zip
-jars=com.ibm.websphere.appserver.spi.wsat; location\:\=dev/spi/ibm/
IBM-ShortName=wsAtomicTransaction-1.2
