#
#Fri Apr 09 10:53:36 CDT 2021
symbolicName=io.openliberty.jakarta.mail-2.0
visibility=private
-include=~${workspace}/cnf/resources/bnd/feature.props
kind=beta
singleton=true
WLP-Activation-Type=parallel
edition=core
-features=com.ibm.websphere.appserver.eeCompatible-9.0,io.openliberty.jakarta.activation-2.0
-bundles=io.openliberty.jakarta.mail.2.0;location\:\="dev/api/spec/,lib/"; mavenCoordinates\="jakarta.mail\:jakarta.mail-api\:2.0.0",io.openliberty.com.sun.mail.jakarta.mail.2.0
Subsystem-Version=2.0
IBM-Process-Types=client, server
