symbolicName=com.ibm.websphere.appserver.spnego-1.0
visibility=public
-include=~${workspace}/cnf/resources/bnd/feature.props
WLP-DisableAllFeatures-OnConflict=false
kind=ga
edition=core
-features=com.ibm.websphere.appserver.servlet-3.0;ibm.tolerates:="3.1,4.0,5.0",com.ibm.websphere.appserver.authFilter-1.0,io.openliberty.spnego1.0.internal.ee-6.0;ibm.tolerates:="9.0"
-bundles=com.ibm.ws.security.token.s4u2
Subsystem-Name=Simple and Protected GSSAPI Negotiation Mechanism 1.0
IBM-ShortName=spnego-1.0
