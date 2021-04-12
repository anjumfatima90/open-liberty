#
#Mon Apr 12 14:46:11 CDT 2021
symbolicName=io.openliberty.jakarta.xmlBinding-3.0
visibility=private
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-App-ForceRestart=uninstall, install
kind=beta
singleton=true
WLP-Activation-Type=parallel
edition=core
-features=com.ibm.websphere.appserver.eeCompatible-9.0,com.ibm.websphere.appserver.classloading-1.0,io.openliberty.jakarta.activation-2.0
-bundles=io.openliberty.jakarta.xmlBinding.3.0; location\:\="dev/api/spec/,lib/"; mavenCoordinates\="jakarta.xml.bind\:jakarta.xml.bind-api\:3.0.0"
Subsystem-Name=Jakarta XML Bindings 3.0
IBM-Process-Types=client, server
