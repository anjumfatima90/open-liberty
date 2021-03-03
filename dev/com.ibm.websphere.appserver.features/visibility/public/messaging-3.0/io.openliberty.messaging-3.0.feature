#
#Wed Mar 03 12:43:54 CST 2021
symbolicName=io.openliberty.messaging-3.0
visibility=public
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-App-ForceRestart=uninstall
kind=beta
singleton=true
WLP-AlsoKnownAs=jms-3.0
IBM-API-Package=jakarta.jms; version\="3.0"; type\="spec"
WLP-Activation-Type=parallel
edition=base
-features=io.openliberty.messaging-3.0.internal,com.ibm.websphere.appserver.eeCompatible-9.0,io.openliberty.connectors-2.0,com.ibm.websphere.appserver.transaction-2.0
-bundles=com.ibm.ws.jms20.feature
Subsystem-Name=Jakarta Messaging 3.0
IBM-ShortName=messaging-3.0
