#
#Fri Apr 09 10:53:36 CDT 2021
symbolicName=io.openliberty.facesContainer-3.0
visibility=public
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-App-ForceRestart=install, uninstall
kind=beta
singleton=true
WLP-AlsoKnownAs=jsfContainer-3.0
IBM-API-Package=org.jboss.weld;type\="internal",org.jboss.weld.manager;type\="internal",org.jboss.weld.context.http;type\="internal",org.jboss.weld.context;type\="internal"
WLP-Activation-Type=parallel
edition=core
-features=io.openliberty.facesProvider-3.0.0.Container,io.openliberty.cdi-3.0,com.ibm.websphere.appserver.servlet-5.0,com.ibm.websphere.appserver.eeCompatible-9.0,io.openliberty.jakarta.validation-3.0,io.openliberty.pages-3.0,com.ibm.websphere.appserver.jndi-1.0,io.openliberty.websocket-2.0
-bundles=io.openliberty.facesContainer.classloading.3.0
Subsystem-Name=Jakarta Server Faces 3.0 Container
-jars=com.ibm.ws.jsfContainer.jakarta; location\:\=lib/
IBM-ShortName=facesContainer-3.0
