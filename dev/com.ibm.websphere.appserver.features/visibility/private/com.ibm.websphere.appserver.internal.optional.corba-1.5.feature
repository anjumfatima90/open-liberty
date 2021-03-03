#
#Wed Mar 03 12:43:55 CST 2021
symbolicName=com.ibm.websphere.appserver.internal.optional.corba-1.5
visibility=private
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-App-ForceRestart=uninstall, install
WLP-DisableAllFeatures-OnConflict=false
kind=ga
edition=core
-bundles=com.ibm.ws.org.apache.yoko.corba.spec.1.5; require-java\:\="9",com.ibm.ws.org.apache.yoko.osgi.1.5; require-java\:\="9",com.ibm.ws.org.apache.servicemix.bundles.bcel.5.2; require-java\:\="9",com.ibm.ws.org.apache.yoko.rmi.impl.1.5; require-java\:\="9",com.ibm.ws.org.apache.yoko.core.1.5; require-java\:\="9",com.ibm.ws.org.apache.yoko.util.1.5; require-java\:\="9",com.ibm.ws.org.apache.yoko.rmi.spec.1.5; require-java\:\="9"
Subsystem-Name=OMG CORBA APIs and RMI-IIOP API
IBM-Process-Types=client, server
