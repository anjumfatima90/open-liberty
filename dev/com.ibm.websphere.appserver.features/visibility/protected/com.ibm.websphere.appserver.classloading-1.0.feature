#
#Mon Apr 12 14:46:11 CDT 2021
symbolicName=com.ibm.websphere.appserver.classloading-1.0
visibility=protected
-include=~${workspace}/cnf/resources/bnd/feature.props
WLP-DisableAllFeatures-OnConflict=false
kind=ga
IBM-API-Package=javax.activity; type\=spec; require-java\:\=9
WLP-Activation-Type=parallel
edition=core
-features=com.ibm.websphere.appserver.containerServices-1.0,com.ibm.websphere.appserver.dynamicBundle-1.0,com.ibm.websphere.appserver.artifact-1.0
-bundles=com.ibm.websphere.javaee.activity.1.0; require-java\:\=9; location\:\="dev/api/spec/,lib/",com.ibm.ws.classloading
IBM-SPI-Package=com.ibm.wsspi.classloading, com.ibm.wsspi.library
-files=dev/spi/ibm/javadoc/com.ibm.websphere.appserver.spi.classloading_1.4-javadoc.zip
IBM-Process-Types=server, client
-jars=com.ibm.websphere.appserver.spi.classloading; location\:\=dev/spi/ibm/
