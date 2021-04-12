#
#Mon Apr 12 14:46:11 CDT 2021
symbolicName=io.openliberty.appAuthentication-2.0
visibility=public
-include=~${workspace}/cnf/resources/bnd/feature.props
kind=beta
WLP-AlsoKnownAs=jaspic-2.0
IBM-API-Package=jakarta.security.auth.message; type\="spec", jakarta.security.auth.message.callback; type\="spec", jakarta.security.auth.message.config; type\="spec", jakarta.security.auth.message.module; type\="spec"
edition=core
-features=io.openliberty.xmlBinding-3.0,io.openliberty.appSecurity-4.0,io.openliberty.jakarta.authentication-2.0,com.ibm.websphere.appserver.servlet-5.0,com.ibm.websphere.appserver.eeCompatible-9.0
-bundles=io.openliberty.security.jaspic.2.0.internal
Subsystem-Name=Jakarta Authentication 2.0
IBM-SPI-Package=com.ibm.wsspi.security.jaspi; type\="ibm-spi"
-files=dev/spi/ibm/javadoc/com.ibm.websphere.appserver.spi.jaspic_1.1-javadoc.zip
-jars=io.openliberty.jaspic.2.0.spi; location\:\=dev/spi/ibm/
IBM-ShortName=appAuthentication-2.0
