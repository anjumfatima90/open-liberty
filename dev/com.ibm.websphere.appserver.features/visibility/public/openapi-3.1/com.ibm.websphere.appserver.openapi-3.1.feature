#
#Mon Feb 08 16:22:51 CST 2021
symbolicName=com.ibm.websphere.appserver.openapi-3.1
visibility=public
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-App-ForceRestart=install, uninstall
WLP-DisableAllFeatures-OnConflict=false
kind=ga
singleton=true
edition=core
-features=com.ibm.wsspi.appserver.webBundle-1.0,com.ibm.websphere.appserver.servlet-3.1;ibm.tolerates\:\="4.0",com.ibm.websphere.appserver.adminSecurity-1.0,com.ibm.websphere.appserver.mpOpenAPI-1.0,com.ibm.websphere.appserver.jaxrs-2.0;ibm.tolerates\:\="2.1"
-bundles=com.ibm.websphere.openapi.3.1, com.ibm.ws.openapi.3.1, com.ibm.ws.openapi.3.1.private, com.ibm.ws.openapi.3.1.public, com.ibm.ws.openapi.ui, com.ibm.ws.openapi.ui.private, com.ibm.ws.org.apache.commons.io; location\:\=lib/, com.ibm.ws.org.apache.commons.lang3; location\:\=lib/
Subsystem-Name=OpenAPI 3.1
IBM-SPI-Package=com.ibm.wsspi.openapi31; type\="ibm-spi"
-jars=com.ibm.websphere.appserver.spi.openapi.3.1; location\:\=dev/spi/ibm/
IBM-ShortName=openapi-3.1
