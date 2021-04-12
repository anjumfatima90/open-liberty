#
#Mon Apr 12 14:46:11 CDT 2021
symbolicName=com.ibm.websphere.appserver.mpConfig-2.0
visibility=public
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-App-ForceRestart=install, uninstall
kind=ga
singleton=true
IBM-API-Package=org.eclipse.microprofile.config;  type\="stable", org.eclipse.microprofile.config.spi;  type\="stable", org.eclipse.microprofile.config.inject;  type\="stable", io.smallrye.config; type\="internal"
WLP-Activation-Type=parallel
edition=core
-features=com.ibm.websphere.appserver.appmanager-1.0,com.ibm.websphere.appserver.containerServices-1.0,com.ibm.websphere.appserver.javax.annotation-1.3,com.ibm.websphere.appserver.org.eclipse.microprofile.config-2.0,com.ibm.websphere.appserver.internal.slf4j-1.7.7,io.openliberty.mpCompatible-4.0,com.ibm.websphere.appserver.javax.cdi-2.0
-bundles=io.openliberty.io.smallrye.config, io.openliberty.io.smallrye.common, io.openliberty.microprofile.config.internal.common, io.openliberty.microprofile.config.internal.serverxml, com.ibm.ws.org.apache.commons.lang3, com.ibm.ws.cdi.interfaces, com.ibm.ws.org.jboss.logging
Subsystem-Name=MicroProfile Config 2.0
IBM-ShortName=mpConfig-2.0
