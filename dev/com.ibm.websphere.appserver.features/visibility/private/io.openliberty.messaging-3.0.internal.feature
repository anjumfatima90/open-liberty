symbolicName=io.openliberty.messaging-3.0.internal
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-App-ForceRestart=uninstall
singleton=true
kind=beta
IBM-API-Package=jakarta.jms; version="3.0"; type="spec"
WLP-Activation-Type=parallel
edition=base
-features=io.openliberty.jakartaeePlatform-9.0,io.openliberty.connectors-2.0.internal,io.openliberty.jakarta.messaging-3.0,com.ibm.websphere.appserver.transaction-2.0,io.openliberty.jakarta.connectors-2.0
-bundles=com.ibm.ws.messaging.jmsspec.common.jakarta
