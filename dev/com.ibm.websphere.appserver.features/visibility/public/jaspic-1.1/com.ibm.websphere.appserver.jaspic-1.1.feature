#
#Wed Mar 03 12:43:54 CST 2021
symbolicName=com.ibm.websphere.appserver.jaspic-1.1
visibility=public
-include=~${workspace}/cnf/resources/bnd/feature.props
WLP-DisableAllFeatures-OnConflict=false
kind=ga
IBM-API-Package=javax.security.auth.message; type\="spec", javax.security.auth.message.callback; type\="spec", javax.security.auth.message.config; type\="spec", javax.security.auth.message.module; type\="spec"
edition=core
-features=com.ibm.websphere.appserver.internal.optional.jaxb-2.2;ibm.tolerates\:\="2.3",com.ibm.websphere.appserver.appSecurity-2.0;ibm.tolerates\:\="3.0",com.ibm.websphere.appserver.servlet-3.0;ibm.tolerates\:\="3.1,4.0",com.ibm.websphere.appserver.eeCompatible-6.0;ibm.tolerates\:\="7.0,8.0"
-bundles=com.ibm.websphere.javaee.jaspic.1.1; location\:\=dev/api/spec/; mavenCoordinates\="javax.security.auth.message\:javax.security.auth.message-api\:1.1", com.ibm.ws.security.jaspic.1.1
Subsystem-Name=Java Authentication SPI for Containers 1.1
IBM-SPI-Package=com.ibm.wsspi.security.jaspi; type\="ibm-spi"
-files=dev/spi/ibm/javadoc/com.ibm.websphere.appserver.spi.jaspic_1.1-javadoc.zip
-jars=com.ibm.websphere.appserver.spi.jaspic; location\:\=dev/spi/ibm/
IBM-ShortName=jaspic-1.1
