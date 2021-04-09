#
#Fri Apr 09 10:53:36 CDT 2021
symbolicName=io.openliberty.messagingSecurity-3.0
visibility=public
-include=~${workspace}/cnf/resources/bnd/feature.props
kind=beta
WLP-AlsoKnownAs=wasJmsSecurity-3.0
WLP-Activation-Type=parallel
edition=base
-features=com.ibm.websphere.appserver.eeCompatible-9.0,io.openliberty.messagingServer-3.0,com.ibm.websphere.appserver.security-1.0,com.ibm.websphere.appserver.transaction-2.0
-bundles=com.ibm.ws.messaging.utils, com.ibm.ws.messaging.security, com.ibm.ws.messaging.security.common
Subsystem-Name=Messaging Server 3.0 Security
IBM-ShortName=messagingSecurity-3.0
