#
#Mon Feb 08 16:22:51 CST 2021
symbolicName=com.ibm.websphere.appserver.jsfContainer-2.2
visibility=public
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-App-ForceRestart=install, uninstall
WLP-DisableAllFeatures-OnConflict=false
kind=ga
singleton=true
edition=core
-features=com.ibm.websphere.appserver.servlet-3.1,com.ibm.websphere.appserver.jsp-2.3,com.ibm.websphere.appserver.eeCompatible-7.0,com.ibm.websphere.appserver.jsfProvider-2.2.0.Container,com.ibm.websphere.appserver.jndi-1.0,com.ibm.websphere.appserver.javax.validation-1.1,com.ibm.websphere.appserver.cdi-1.2
-bundles=com.ibm.ws.jsfContainer.classloading.2.2
Subsystem-Name=JavaServer Faces Container 2.2
-jars=com.ibm.ws.jsfContainer; location\:\=lib/
IBM-ShortName=jsfContainer-2.2
