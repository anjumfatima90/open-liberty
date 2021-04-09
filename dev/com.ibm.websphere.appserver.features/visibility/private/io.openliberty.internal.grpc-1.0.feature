#
#Fri Apr 09 10:53:36 CDT 2021
symbolicName=io.openliberty.internal.grpc-1.0
-include=~${workspace}/cnf/resources/bnd/feature.props
singleton=true
kind=ga
IBM-API-Package=com.google.common.collect; type\="internal",com.google.common.util.concurrent; type\="internal",com.google.protobuf;  type\="internal",io.grpc;  type\="stable", io.grpc.protobuf;  type\="internal", io.grpc.stub;  type\="internal", io.grpc.stub.annotations;  type\="internal", io.grpc.internal; type\="internal"
WLP-Activation-Type=parallel
edition=core
-features=com.ibm.websphere.appserver.appmanager-1.0,com.ibm.websphere.appserver.containerServices-1.0,com.ibm.websphere.appserver.javax.annotation-1.3;ibm.tolerates\:\="1.2",com.ibm.websphere.appserver.classloading-1.0,com.ibm.websphere.appserver.anno-1.0,com.ibm.websphere.appserver.artifact-1.0,com.ibm.websphere.appserver.httptransport-1.0
-bundles=io.openliberty.grpc.1.0.internal.common, io.openliberty.io.grpc.1.0; location\:\="dev/api/stable/,lib/"; mavenCoordinates\="io.grpc\:grpc-api\:1.36.1"
Subsystem-Name=gRPC internal 1.0
