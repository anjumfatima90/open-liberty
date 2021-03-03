#
#Wed Mar 03 12:43:54 CST 2021
symbolicName=com.ibm.websphere.appserver.restConnector-2.0
visibility=public
-include=~${workspace}/cnf/resources/bnd/feature.props
WLP-DisableAllFeatures-OnConflict=false
kind=ga
singleton=true
IBM-API-Package=com.ibm.websphere.jmx.connector.rest; type\="ibm-api", com.ibm.ws.jmx.connector.client.rest; type\="ibm-api", com.ibm.websphere.filetransfer; type\="ibm-api"
edition=core
-features=com.ibm.websphere.appserver.restHandler-1.0,com.ibm.websphere.appserver.servlet-3.0;ibm.tolerates\:\="3.1,4.0,5.0"
-bundles=com.ibm.ws.filetransfer.routing.archiveExpander, com.ibm.ws.jmx.connector.client.rest, com.ibm.ws.filetransfer, com.ibm.websphere.filetransfer, com.ibm.ws.jmx.request, com.ibm.json4j, com.ibm.ws.rest.handler.config
Subsystem-Name=Admin REST Connector 2.0
-files=clients/restConnector.jar, clients/jython/restConnector.py, dev/api/ibm/javadoc/com.ibm.websphere.appserver.api.restConnector_1.3-javadoc.zip, clients/jython/README, dev/spi/ibm/javadoc/com.ibm.websphere.appserver.spi.restHandler_2.0-javadoc.zip
-jars=com.ibm.websphere.appserver.spi.restHandler; location\:\=dev/spi/ibm/, com.ibm.websphere.appserver.api.restConnector; location\:\=dev/api/ibm/
IBM-ShortName=restConnector-2.0
