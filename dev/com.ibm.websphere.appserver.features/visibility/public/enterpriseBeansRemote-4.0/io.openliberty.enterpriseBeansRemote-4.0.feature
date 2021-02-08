#
#Mon Feb 08 16:22:51 CST 2021
symbolicName=io.openliberty.enterpriseBeansRemote-4.0
visibility=public
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-App-ForceRestart=install, uninstall
kind=beta
WLP-AlsoKnownAs=ejbRemote-4.0
IBM-API-Package=com.ibm.ws.ejb.portable; type\="internal"
WLP-Activation-Type=parallel
edition=base
-features=com.ibm.websphere.appserver.iioptransport-1.0,com.ibm.websphere.appserver.eeCompatible-9.0,io.openliberty.enterpriseBeansLite-4.0,com.ibm.websphere.appserver.transaction-2.0
-bundles=com.ibm.ws.ejbcontainer.remote.jakarta
Subsystem-Name=Jakarta Enterprise Beans 4.0 Remote
-files=clients/ejbRemotePortable.jakarta.jar
IBM-ShortName=enterpriseBeansRemote-4.0
