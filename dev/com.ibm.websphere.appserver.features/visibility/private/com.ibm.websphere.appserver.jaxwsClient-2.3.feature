#
#Wed Mar 03 12:43:55 CST 2021
symbolicName=com.ibm.websphere.appserver.jaxwsClient-2.3
visibility=private
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-App-ForceRestart=uninstall, install
kind=noship
singleton=true
WLP-Activation-Type=parallel
edition=full
-features=com.ibm.websphere.appserver.jaxws.common-2.3
-bundles=com.ibm.ws.jaxws.2.3.clientcontainer
Subsystem-Name=Internal JAX-WS Client Container Features
IBM-Process-Types=client
