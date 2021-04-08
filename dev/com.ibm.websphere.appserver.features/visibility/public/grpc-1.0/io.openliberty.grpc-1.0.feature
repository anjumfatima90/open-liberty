symbolicName=io.openliberty.grpc-1.0
visibility=public
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-App-ForceRestart=install, uninstall
kind=ga
singleton=true
IBM-API-Package=io.openliberty.grpc.annotation; type="ibm-api"
WLP-Activation-Type=parallel
edition=core
-features=com.ibm.websphere.appserver.servlet-4.0,io.openliberty.internal.grpc-1.0
-bundles=io.openliberty.grpc.1.0.internal,com.ibm.ws.security.authorization.util
Subsystem-Name=gRPC 1.0
-files=dev/api/ibm/javadoc/io.openliberty.grpc.1.0_1.0-javadoc.zip
Subsystem-Version=1.0.0
-jars=io.openliberty.grpc.1.0; location:="dev/api/ibm/,lib/"
IBM-ShortName=grpc-1.0
