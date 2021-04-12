#
#Mon Apr 12 14:46:11 CDT 2021
symbolicName=com.ibm.websphere.appserver.jaxws-2.3
visibility=public
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-App-ForceRestart=uninstall, install
kind=noship
singleton=true
IBM-API-Package=org.apache.cxf.binding.soap.wsdl.extensions;type\="internal", org.apache.cxf.databinding;type\="internal"
WLP-Activation-Type=parallel
edition=full
-features=com.ibm.websphere.appserver.servlet-4.0,com.ibm.websphere.appserver.jaxws.common-2.3,com.ibm.websphere.appserver.eeCompatible-8.0,com.ibm.websphere.appserver.globalhandler-1.0
-bundles=com.ibm.ws.javaee.ddmodel.ws, com.ibm.ws.jaxws.2.3.wsat, com.ibm.ws.jaxws.2.3.common; start-phase\:\=CONTAINER_LATE, com.ibm.ws.webservices.javaee.common
Subsystem-Name=Java Web Services 2.3
IBM-SPI-Package=com.ibm.wsspi.webservices.handler
IBM-ShortName=jaxws-2.3
