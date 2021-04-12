#
#Mon Apr 12 14:46:11 CDT 2021
symbolicName=com.ibm.websphere.appserver.anno-1.0
Manifest-Version=1.0
-include=~${workspace}/cnf/resources/bnd/feature.props
WLP-DisableAllFeatures-OnConflict=false
kind=ga
singleton=true
IBM-API-Package=javax.annotation; type\="spec", javax.annotation.security; type\="spec", javax.annotation.sql; type\="spec"
WLP-Activation-Type=parallel
edition=core
-features=com.ibm.websphere.appserver.javax.annotation-1.1;ibm.tolerates\:\="1.2,1.3",com.ibm.websphere.appserver.artifact-1.0
-bundles=com.ibm.ws.anno
IBM-SPI-Package=com.ibm.wsspi.anno.classsource, com.ibm.wsspi.anno.info, com.ibm.wsspi.anno.service, com.ibm.wsspi.anno.targets, com.ibm.wsspi.anno.util
-files=dev/spi/ibm/javadoc/com.ibm.websphere.appserver.spi.anno_1.1-javadoc.zip
IBM-Process-Types=server, client
-jars=com.ibm.websphere.appserver.spi.anno; location\:\=dev/spi/ibm/
