#
#Mon Feb 08 16:22:51 CST 2021
symbolicName=io.openliberty.connectors-2.0
visibility=public
-include=~${workspace}/cnf/resources/bnd/feature.props
kind=beta
singleton=true
WLP-AlsoKnownAs=jca-2.0
WLP-Activation-Type=parallel
Subsystem-Category=JakartaEE9Application
edition=base
-features=io.openliberty.appserver.connectors-2.0,io.openliberty.jakartaeePlatform-9.0,io.openliberty.connectors-2.0.internal,com.ibm.websphere.appserver.eeCompatible-9.0,com.ibm.websphere.appserver.transaction-2.0
-bundles=com.ibm.ws.app.manager.rar.jakarta, com.ibm.ws.jca.1.7.jakarta
Subsystem-Name=Jakarta Connectors 2.0
IBM-ShortName=connectors-2.0
