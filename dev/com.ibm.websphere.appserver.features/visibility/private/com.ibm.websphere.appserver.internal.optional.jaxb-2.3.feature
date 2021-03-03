#
#Wed Mar 03 12:43:55 CST 2021
symbolicName=com.ibm.websphere.appserver.internal.optional.jaxb-2.3
visibility=private
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-App-ForceRestart=uninstall, install
kind=noship
singleton=true
edition=full
-features=com.ibm.websphere.appserver.classloading-1.0
-bundles=com.ibm.websphere.javaee.activation.1.1; require-java\:\="9" ;location\:\="dev/api/spec/,lib/"; apiJar\=false, com.ibm.websphere.javaee.jaxb.2.3; location\:\="dev/api/spec/,lib/"; apiJar\=false, com.ibm.ws.org.apache.geronimo.osgi.registry.1.1, com.ibm.ws.jaxb.tools.2.3
Subsystem-Name=Java XML Bindings 2.3 for all Java versions
IBM-Process-Types=client, server
