symbolicName=com.ibm.websphere.appserver.ssl-1.0
visibility=public
-include=~${workspace}/cnf/resources/bnd/feature.props
superseded-by=transportSecurity-1.0
WLP-DisableAllFeatures-OnConflict=false
kind=ga
IBM-API-Package=com.ibm.websphere.ssl; type="ibm-api"
edition=core
-features=com.ibm.websphere.appserver.channelfw-1.0,com.ibm.websphere.appserver.certificateCreator-1.0;ibm.tolerates:="2.0"
-bundles=com.ibm.ws.ssl, com.ibm.ws.channel.ssl, com.ibm.websphere.security, com.ibm.ws.crypto.certificateutil
Subsystem-Name=Secure Socket Layer 1.0
IBM-SPI-Package=com.ibm.wsspi.ssl
-files=dev/spi/ibm/javadoc/com.ibm.websphere.appserver.spi.ssl_1.5-javadoc.zip, dev/api/ibm/javadoc/com.ibm.websphere.appserver.api.ssl_1.4-javadoc.zip
IBM-Process-Types=server, client
-jars=com.ibm.websphere.appserver.spi.ssl; location:=dev/spi/ibm/, com.ibm.websphere.appserver.api.ssl; location:=dev/api/ibm/
IBM-ShortName=ssl-1.0
