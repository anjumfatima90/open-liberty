#
#Mon Feb 08 16:22:51 CST 2021
symbolicName=io.openliberty.jakarta.activation-2.0
visibility=private
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-App-ForceRestart=uninstall, install
kind=beta
singleton=true
IBM-API-Package=jakarta.activation; type\="spec"
WLP-Activation-Type=parallel
edition=core
-features=com.ibm.websphere.appserver.eeCompatible-9.0
-bundles=io.openliberty.jakarta.activation.2.0;  location\:\="dev/api/spec/,lib/"; mavenCoordinates\="jakarta.activation\:jakarta.activation-api\:2.0.0"
Subsystem-Name=Jakarta Activation 2.0
IBM-Process-Types=client, server
