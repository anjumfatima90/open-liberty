#
#Fri Apr 09 10:53:36 CDT 2021
symbolicName=com.ibm.websphere.appserver.mpConfig-1.4
visibility=public
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-App-ForceRestart=install, uninstall
WLP-DisableAllFeatures-OnConflict=false
kind=ga
singleton=true
IBM-API-Package=org.eclipse.microprofile.config;  type\="stable", org.eclipse.microprofile.config.spi;  type\="stable", org.eclipse.microprofile.config.inject;  type\="stable"
WLP-Activation-Type=parallel
edition=core
-features=com.ibm.websphere.appserver.appmanager-1.0,io.openliberty.mpCompatible-0.0,com.ibm.websphere.appserver.containerServices-1.0,com.ibm.websphere.appserver.javax.annotation-1.3;ibm.tolerates\:\="1.2",com.ibm.websphere.appserver.javax.cdi-2.0;ibm.tolerates\:\="1.2",com.ibm.websphere.appserver.org.eclipse.microprofile.config-1.4
-bundles=io.openliberty.microprofile.config.internal.common, io.openliberty.microprofile.config.internal.serverxml, com.ibm.ws.microprofile.config.1.1, com.ibm.ws.microprofile.config.1.2, com.ibm.ws.microprofile.config.1.3, com.ibm.ws.microprofile.config.1.4, com.ibm.ws.microprofile.config.1.4.services, com.ibm.ws.cdi.interfaces, com.ibm.ws.org.apache.commons.lang3
Subsystem-Name=MicroProfile Config 1.4
IBM-ShortName=mpConfig-1.4
