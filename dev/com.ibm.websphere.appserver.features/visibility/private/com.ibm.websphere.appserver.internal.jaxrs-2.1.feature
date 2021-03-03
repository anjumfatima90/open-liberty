#
#Wed Mar 03 12:43:55 CST 2021
symbolicName=com.ibm.websphere.appserver.internal.jaxrs-2.1
visibility=private
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-App-ForceRestart=uninstall, install
WLP-DisableAllFeatures-OnConflict=false
kind=ga
singleton=true
WLP-Activation-Type=parallel
edition=core
-features=com.ibm.websphere.appserver.internal.optional.jaxb-2.2;ibm.tolerates\:\="2.3",com.ibm.websphere.appserver.containerServices-1.0,com.ibm.websphere.appserver.httpcommons-1.0,com.ibm.websphere.appserver.injection-1.0,com.ibm.websphere.appserver.servlet-4.0,com.ibm.websphere.appserver.classloading-1.0,com.ibm.websphere.appserver.eeCompatible-8.0,com.ibm.websphere.appserver.globalhandler-1.0,com.ibm.websphere.appserver.javax.jaxrs-2.1,com.ibm.websphere.appserver.internal.cxf.common-3.2,com.ibm.websphere.appserver.internal.optional.jaxws-2.2;ibm.tolerates\:\="2.3"
-bundles=com.ibm.websphere.appserver.api.jaxrs20; location\:\="dev/api/ibm/,lib/", com.ibm.ws.jaxrs.2.1.common, com.ibm.ws.jaxrs.2.x.config, com.ibm.ws.org.apache.cxf.cxf.rt.frontend.jaxrs.3.2, com.ibm.ws.org.apache.cxf.cxf.rt.rs.client.3.2, com.ibm.ws.org.apache.cxf.cxf.rt.rs.service.description.3.2, com.ibm.ws.org.apache.cxf.cxf.rt.rs.sse.3.2, com.ibm.ws.security.authorization.util, com.ibm.ws.jaxrs.2.0.web, com.ibm.ws.jaxrs.2.0.server, com.ibm.ws.jaxrs.2.0.client
Subsystem-Name=Internal Java RESTful Services 2.1
-files=bin/jaxrs/wadl2java, bin/jaxrs/wadl2java.bat, bin/jaxrs/tools/wadl2java.jar
-jars=com.ibm.ws.org.apache.cxf.cxf.tools.common.3.2, com.ibm.ws.org.apache.cxf.cxf.tools.wadlto.jaxrs.3.2, com.ibm.ws.jaxrs.2.0.tools
