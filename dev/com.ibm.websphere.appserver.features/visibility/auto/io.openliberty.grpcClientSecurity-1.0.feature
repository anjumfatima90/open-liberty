#
#Fri Apr 09 10:53:36 CDT 2021
symbolicName=io.openliberty.grpcClientSecurity-1.0
Manifest-Version=1.0
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-Install-Policy=when-satisfied
kind=ga
WLP-Activation-Type=parallel
edition=core
-bundles=io.openliberty.grpc.1.0.internal.client.security
IBM-Provision-Capability=osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=io.openliberty.grpcClient-1.0))", osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=com.ibm.websphere.appserver.ssl-1.0))"
