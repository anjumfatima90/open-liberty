symbolicName=com.ibm.websphere.appserver.jcaInboundSecurity-1.0
visibility=public
-include=~${workspace}/cnf/resources/bnd/feature.props
WLP-DisableAllFeatures-OnConflict=false
kind=ga
IBM-API-Package=javax.security.auth.message.callback; type="spec"
edition=base
-features=com.ibm.websphere.appserver.jca-1.6;ibm.tolerates:="1.7",com.ibm.websphere.appserver.eeCompatible-6.0;ibm.tolerates:="7.0,8.0",com.ibm.websphere.appserver.security-1.0,com.ibm.websphere.appserver.transaction-1.1;ibm.tolerates:="1.2"
-bundles=com.ibm.ws.jca.inbound.security, com.ibm.websphere.javaee.jaspic.1.1; location:=dev/api/spec/; mavenCoordinates="javax.security.auth.message:javax.security.auth.message-api:1.1"
Subsystem-Name=Java Connector Architecture Security Inflow 1.0
IBM-ShortName=jcaInboundSecurity-1.0
