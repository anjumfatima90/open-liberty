symbolicName=io.openliberty.jakarta.annotation-2.0
-include=~${workspace}/cnf/resources/bnd/feature.props
singleton=true
kind=beta
WLP-Activation-Type=parallel
-features=com.ibm.websphere.appserver.eeCompatible-9.0
edition=core
-bundles=io.openliberty.jakarta.annotation.2.0; location:="dev/api/spec/,lib/"; mavenCoordinates="jakarta.annotation:jakarta.annotation-api:2.0.0"
IBM-Process-Types=server, client
