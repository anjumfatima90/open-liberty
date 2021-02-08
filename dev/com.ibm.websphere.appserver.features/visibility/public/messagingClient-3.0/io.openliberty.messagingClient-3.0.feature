#
#Mon Feb 08 16:22:51 CST 2021
symbolicName=io.openliberty.messagingClient-3.0
visibility=public
-include=~${workspace}/cnf/resources/bnd/feature.props
kind=beta
singleton=true
WLP-AlsoKnownAs=wasJmsClient-3.0
IBM-API-Package=jakarta.jms; version\="3.0"; type\="spec", com.ibm.websphere.sib.api.jms; type\="internal"
WLP-Activation-Type=parallel
edition=base
-features=com.ibm.websphere.appserver.channelfw-1.0,io.openliberty.messaging-3.0.internal,com.ibm.websphere.appserver.eeCompatible-9.0,com.ibm.websphere.appserver.transaction-2.0
-bundles=com.ibm.ws.messaging.common, com.ibm.ws.resource, com.ibm.ws.messaging.utils, com.ibm.ws.messaging.security.common, com.ibm.ws.messaging.jms.common.jakarta, com.ibm.ws.messaging.jms.2.0.jakarta, com.ibm.ws.messaging.comms.client
Subsystem-Name=Messaging Server 3.0 Client
IBM-ShortName=messagingClient-3.0
