#
#Fri Apr 09 10:53:36 CDT 2021
symbolicName=com.ibm.websphere.appserver.jsfContainer-2.3
visibility=public
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-App-ForceRestart=install, uninstall
WLP-DisableAllFeatures-OnConflict=false
kind=ga
singleton=true
IBM-API-Package=org.jboss.weld;type\="internal",org.jboss.weld.manager;type\="internal",org.jboss.weld.context.http;type\="internal",org.jboss.weld.context;type\="internal"
edition=core
-features=com.ibm.websphere.appserver.websocket-1.1,com.ibm.websphere.appserver.jsfProvider-2.3.0.Container,com.ibm.websphere.appserver.servlet-4.0,com.ibm.websphere.appserver.jsp-2.3,com.ibm.websphere.appserver.eeCompatible-8.0,com.ibm.websphere.appserver.cdi-2.0,com.ibm.websphere.appserver.jndi-1.0,com.ibm.websphere.appserver.javax.validation-2.0
-bundles=com.ibm.ws.jsfContainer.classloading.2.3
Subsystem-Name=JavaServer Faces Container 2.3
-jars=com.ibm.ws.jsfContainer; location\:\=lib/
IBM-ShortName=jsfContainer-2.3
