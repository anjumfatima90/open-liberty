#
#Fri Apr 09 10:53:36 CDT 2021
symbolicName=io.openliberty.xmlWS-3.0
visibility=public
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-App-ForceRestart=uninstall, install
kind=beta
singleton=true
WLP-AlsoKnownAs=jaxws-3.0
IBM-API-Package=org.apache.cxf.binding.soap.wsdl.extensions;type\="internal", org.apache.cxf.databinding;type\="internal"
WLP-Activation-Type=parallel
edition=base
-features=com.ibm.websphere.appserver.eeCompatible-9.0,com.ibm.websphere.appserver.servlet-5.0,io.openliberty.globalhandler-2.0,io.openliberty.xmlws.common-3.0
-bundles=com.ibm.ws.javaee.ddmodel.ws, com.ibm.ws.jaxws.2.3.common.jakarta;start-phase\:\=CONTAINER_LATE, com.ibm.ws.jaxws.webcontainer.jakarta, com.ibm.ws.jaxws.2.3.web.jakarta, com.ibm.ws.jaxws.2.3.wsat, com.ibm.ws.webservices.javaee.common.jakarta
Subsystem-Name=Jakarta XML Web Services 3.0
-files=bin/xmlWS/wsgen; ibm.executable\:\=true; ibm.file.encoding\:\=ebcdic, bin/xmlWS/wsimport; ibm.executable\:\=true; ibm.file.encoding\:\=ebcdic, dev/api/ibm/schema/ibm-ws-bnd_1_0.xsd, bin/xmlWS/wsimport.bat, bin/xmlWS/tools/ws-wsimport.jar, bin/xmlWS/wsgen.bat, bin/xmlWS/tools/ws-wsgen.jar
IBM-ShortName=xmlWS-3.0
