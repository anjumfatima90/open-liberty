#
#Mon Feb 08 16:22:51 CST 2021
symbolicName=com.ibm.websphere.appserver.containerServices-1.0
visibility=protected
-include=~${workspace}/cnf/resources/bnd/feature.props
WLP-DisableAllFeatures-OnConflict=false
kind=ga
WLP-Activation-Type=parallel
edition=core
-features=com.ibm.websphere.appserver.javaeedd-1.0,com.ibm.websphere.appserver.anno-1.0;ibm.tolerates\:\="2.0",com.ibm.websphere.appserver.artifact-1.0
-bundles=com.ibm.ws.resource, com.ibm.ws.container.service, com.ibm.ws.javaee.version, com.ibm.ws.serialization
IBM-SPI-Package=com.ibm.ws.container.service.annotations, com.ibm.ws.container.service.app.deploy, com.ibm.ws.container.service.config, com.ibm.ws.container.service.naming, com.ibm.ws.container.service.security, com.ibm.ws.container.service.state, com.ibm.ws.serialization, com.ibm.wsspi.resource
-files=dev/spi/ibm/javadoc/com.ibm.websphere.appserver.spi.containerServices_4.0-javadoc.zip
IBM-Process-Types=server, client
-jars=com.ibm.websphere.appserver.spi.containerServices; location\:\=dev/spi/ibm/
