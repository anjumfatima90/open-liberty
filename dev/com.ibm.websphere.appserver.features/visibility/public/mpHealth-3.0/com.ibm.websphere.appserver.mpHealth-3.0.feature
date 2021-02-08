#
#Mon Feb 08 16:22:51 CST 2021
symbolicName=com.ibm.websphere.appserver.mpHealth-3.0
visibility=public
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-App-ForceRestart=install, uninstall
kind=beta
singleton=true
IBM-API-Package=org.eclipse.microprofile.health;  type\="stable", org.eclipse.microprofile.health.spi;  type\="stable"
WLP-Activation-Type=parallel
edition=core
-features=com.ibm.websphere.appserver.json-1.0,com.ibm.websphere.appserver.mpConfig-2.0,com.ibm.wsspi.appserver.webBundle-1.0,com.ibm.websphere.appserver.servlet-4.0,io.openliberty.mpCompatible-4.0,com.ibm.websphere.appserver.org.eclipse.microprofile.health-3.0,com.ibm.websphere.appserver.cdi-2.0,com.ibm.websphere.appserver.jndi-1.0
-bundles=com.ibm.websphere.jsonsupport, io.openliberty.microprofile.health.3.0.internal; apiJar\=false; location\:\="lib/", com.ibm.ws.org.joda.time.1.6.2
Subsystem-Name=MicroProfile Health 3.0
IBM-ShortName=mpHealth-3.0
