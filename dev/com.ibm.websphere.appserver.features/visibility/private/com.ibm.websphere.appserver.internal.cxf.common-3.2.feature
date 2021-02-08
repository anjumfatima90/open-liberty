#
#Mon Feb 08 16:22:51 CST 2021
symbolicName=com.ibm.websphere.appserver.internal.cxf.common-3.2
visibility=private
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-App-ForceRestart=uninstall, install
WLP-DisableAllFeatures-OnConflict=false
kind=ga
singleton=true
WLP-Activation-Type=parallel
edition=core
-bundles=com.ibm.websphere.org.osgi.service.http; location\:\="dev/api/spec/,lib/", com.ibm.ws.cxf.client, com.ibm.ws.org.apache.cxf.cxf.core.3.2, com.ibm.ws.org.apache.cxf.cxf.rt.transports.http.3.2, com.ibm.ws.org.apache.cxf.cxf.rt.transports.http.hc.3.2, com.ibm.ws.org.apache.neethi.3.0.2, com.ibm.ws.org.apache.ws.xmlschema.core.2.0.3, com.ibm.ws.org.apache.xml.resolver.1.2
Subsystem-Name=Internal Apache CXF 3.2 Common Feature for JAX-RS and JAX-WS
