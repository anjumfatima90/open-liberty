#
#Wed Mar 03 12:43:55 CST 2021
symbolicName=io.openliberty.mail-2.0
visibility=public
-include=~${workspace}/cnf/resources/bnd/feature.props
kind=beta
singleton=true
WLP-AlsoKnownAs=javaMail-2.0
IBM-API-Package=jakarta.mail; type\="spec", jakarta.mail.internet; type\="spec", jakarta.mail.util; type\="spec", jakarta.mail.search; type\="spec", jakarta.mail.event; type\="spec", com.sun.mail; type\="third-party", com.sun.mail.auth; type\="third-party", com.sun.mail.imap; type\="third-party", com.sun.mail.imap.protocol; type\="third-party", com.sun.mail.iap; type\="third-party", com.sun.mail.pop3; type\="third-party", com.sun.mail.smtp; type\="third-party", com.sun.mail.util; type\="third-party", com.sun.mail.util.logging; type\="third-party", com.sun.mail.handlers; type\="third-party"
WLP-Activation-Type=parallel
edition=core
-features=com.ibm.websphere.appserver.eeCompatible-9.0,com.ibm.websphere.appserver.classloading-1.0,io.openliberty.jakarta.mail-2.0,com.ibm.websphere.appserver.injection-2.0,io.openliberty.jakarta.activation-2.0
-bundles=io.openliberty.mail.2.0.internal, com.ibm.ws.javamail.config
Subsystem-Name=Jakarta Mail 2.0
Subsystem-Version=2.0
-jars=io.openliberty.mail.2.0.thirdparty; location\:\=dev/api/third-party/; mavenCoordinates\="com.sun.mail\:jakarta.mail\:2.0.0"
IBM-ShortName=mail-2.0
