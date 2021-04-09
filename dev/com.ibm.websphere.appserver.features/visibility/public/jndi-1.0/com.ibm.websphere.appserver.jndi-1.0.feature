#
#Fri Apr 09 10:53:36 CDT 2021
symbolicName=com.ibm.websphere.appserver.jndi-1.0
visibility=public
-include=~${workspace}/cnf/resources/bnd/feature.props
WLP-DisableAllFeatures-OnConflict=false
kind=ga
WLP-Activation-Type=parallel
edition=core
-features=com.ibm.websphere.appserver.javaeedd-1.0,com.ibm.websphere.appserver.containerServices-1.0,com.ibm.websphere.appserver.classloading-1.0,com.ibm.websphere.appserver.internal.slf4j-1.7.7,com.ibm.websphere.appserver.anno-1.0;ibm.tolerates\:\="2.0",com.ibm.websphere.appserver.artifact-1.0
-bundles=com.ibm.ws.jndi.url.contexts, com.ibm.ws.org.apache.aries.jndi.core, com.ibm.ws.org.apache.aries.jndi.api, com.ibm.ws.jndi
Subsystem-Name=Java Naming and Directory Interface 1.0
IBM-Process-Types=server, client
IBM-ShortName=jndi-1.0
