symbolicName=io.openliberty.grpcClient-1.0
visibility=public
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-App-ForceRestart=install, uninstall
kind=ga
singleton=true
IBM-API-Package=io.grpc.netty; type="third-party", io.netty.handler.ssl; type="third-party", io.openliberty.grpc.internal.client; type="internal"
WLP-Activation-Type=parallel
edition=core
-features=com.ibm.websphere.appserver.servlet-4.0,com.ibm.websphere.appserver.internal.slf4j-1.7.7,io.openliberty.internal.grpc-1.0
-bundles=io.openliberty.grpc.1.0.internal.client, io.openliberty.grpc.client.1.0.thirdparty; location:="dev/api/third-party/,lib/", com.ibm.ws.org.apache.commons.logging.1.0.3
Subsystem-Name=gRPC Client 1.0
Subsystem-Version=1.0.0
IBM-ShortName=grpcClient-1.0
