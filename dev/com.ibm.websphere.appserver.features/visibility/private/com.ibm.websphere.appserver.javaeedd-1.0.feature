#
#Mon Apr 12 14:46:11 CDT 2021
symbolicName=com.ibm.websphere.appserver.javaeedd-1.0
-include=~${workspace}/cnf/resources/bnd/feature.props
WLP-DisableAllFeatures-OnConflict=false
kind=ga
WLP-Activation-Type=parallel
edition=core
-features=com.ibm.websphere.appserver.artifact-1.0
-bundles=com.ibm.ws.javaee.ddmodel, com.ibm.ws.javaee.dd, com.ibm.ws.javaee.version, com.ibm.ws.javaee.dd.common, com.ibm.ws.javaee.dd.ejb
IBM-SPI-Package=com.ibm.ws.javaee.dd.appbnd, com.ibm.ws.javaee.dd.common, com.ibm.ws.javaee.dd.web, com.ibm.ws.javaee.dd.web.common, com.ibm.ws.javaee.dd.webbnd, com.ibm.ws.javaee.dd.webext, com.ibm.ws.javaee.dd.commonbnd, com.ibm.ws.javaee.dd.commonext, com.ibm.ws.javaee.dd.jsp
-files=dev/spi/ibm/javadoc/com.ibm.websphere.appserver.spi.javaeedd_1.4-javadoc.zip
IBM-Process-Types=server, client
-jars=com.ibm.websphere.appserver.spi.javaeedd; location\:\=dev/spi/ibm/
