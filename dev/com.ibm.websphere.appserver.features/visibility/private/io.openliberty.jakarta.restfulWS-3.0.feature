#
#Mon Feb 08 16:22:51 CST 2021
symbolicName=io.openliberty.jakarta.restfulWS-3.0
visibility=private
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-App-ForceRestart=uninstall, install
kind=beta
singleton=true
WLP-Activation-Type=parallel
edition=core
-features=com.ibm.websphere.appserver.eeCompatible-9.0,io.openliberty.jakarta.activation-2.0
-bundles=io.openliberty.jakarta.restfulWS.3.0;location\:\="dev/api/spec/,lib/"; mavenCoordinates\="jakarta.ws.rs\:jakarta.ws.rs-api\:3.0.0"
Subsystem-Name=Jakarta RESTful Web Services 3.0
IBM-Process-Types=client, server
