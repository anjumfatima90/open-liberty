#
#Mon Apr 12 14:46:11 CDT 2021
symbolicName=io.openliberty.xmlWSClient-3.0
visibility=private
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-App-ForceRestart=uninstall, install
kind=beta
singleton=true
WLP-Activation-Type=parallel
edition=base
-features=io.openliberty.xmlws.common-3.0
-bundles=com.ibm.ws.jaxws.2.3.clientcontainer.jakarta
Subsystem-Name=Internal JAX-WS Client Container Features
IBM-Process-Types=client
