#
#Wed Mar 03 12:43:55 CST 2021
symbolicName=com.ibm.websphere.appserver.internal.jaxrs-2.0
visibility=private
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-App-ForceRestart=uninstall, install
WLP-DisableAllFeatures-OnConflict=false
kind=ga
singleton=true
WLP-Activation-Type=parallel
edition=core
-features=com.ibm.websphere.appserver.json-1.0,com.ibm.websphere.appserver.containerServices-1.0,com.ibm.websphere.appserver.injection-1.0,com.ibm.websphere.appserver.servlet-3.1,com.ibm.websphere.appserver.classloading-1.0,com.ibm.websphere.appserver.eeCompatible-7.0,com.ibm.websphere.appserver.javax.jaxrs-2.0,com.ibm.websphere.appserver.globalhandler-1.0
-bundles=com.ibm.ws.org.apache.xml.resolver.1.2, com.ibm.ws.org.apache.neethi.3.0.2, com.ibm.ws.jaxrs.2.0.common, com.ibm.ws.jaxrs.2.x.config, com.ibm.ws.org.apache.ws.xmlschema.core.2.0.3, com.ibm.ws.jaxrs.2.0.web, com.ibm.ws.jaxrs.2.0.server, com.ibm.ws.jaxrs.2.0.client
Subsystem-Name=Internal Java RESTful Services 2.0
-files=bin/jaxrs/wadl2java, bin/jaxrs/wadl2java.bat, bin/jaxrs/tools/wadl2java.jar
-jars=com.ibm.ws.jaxrs.2.0.tools
