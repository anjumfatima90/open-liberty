#
#Mon Feb 08 16:22:51 CST 2021
symbolicName=com.ibm.websphere.appserver.anno-2.0
Manifest-Version=1.0
-include=~${workspace}/cnf/resources/bnd/feature.props
kind=beta
singleton=true
IBM-API-Package=jakarta.annotation; type\="spec", jakarta.annotation.security; type\="spec", jakarta.annotation.sql; type\="spec"
WLP-Activation-Type=parallel
edition=core
-features=io.openliberty.jakarta.annotation-2.0,com.ibm.websphere.appserver.artifact-1.0
-bundles=com.ibm.ws.anno
IBM-SPI-Package=com.ibm.wsspi.anno.classsource, com.ibm.wsspi.anno.info, com.ibm.wsspi.anno.service, com.ibm.wsspi.anno.targets, com.ibm.wsspi.anno.util
-files=dev/spi/ibm/javadoc/com.ibm.websphere.appserver.spi.anno_1.1-javadoc.zip
IBM-Process-Types=server, client
-jars=com.ibm.websphere.appserver.spi.anno; location\:\=dev/spi/ibm/
