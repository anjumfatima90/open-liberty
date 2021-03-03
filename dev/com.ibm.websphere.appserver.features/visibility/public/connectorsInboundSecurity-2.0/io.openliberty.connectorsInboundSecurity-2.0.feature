#
#Wed Mar 03 12:43:54 CST 2021
symbolicName=io.openliberty.connectorsInboundSecurity-2.0
visibility=public
-include=~${workspace}/cnf/resources/bnd/feature.props
kind=beta
WLP-AlsoKnownAs=jcaInboundSecurity-2.0
IBM-API-Package=jakarta.security.auth.message.callback; type\="spec"
edition=base
-features=io.openliberty.jakarta.authentication-2.0,com.ibm.websphere.appserver.eeCompatible-9.0,io.openliberty.connectors-2.0,com.ibm.websphere.appserver.security-1.0,com.ibm.websphere.appserver.transaction-2.0
-bundles=io.openliberty.connectors.security.internal.inbound
Subsystem-Name=Jakarta Connectors 2.0 Inbound Security
IBM-ShortName=connectorsInboundSecurity-2.0
