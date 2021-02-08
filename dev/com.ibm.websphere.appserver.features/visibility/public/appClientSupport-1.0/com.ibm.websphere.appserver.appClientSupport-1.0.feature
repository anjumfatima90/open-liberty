#
#Mon Feb 08 16:22:51 CST 2021
symbolicName=com.ibm.websphere.appserver.appClientSupport-1.0
visibility=public
-include=~${workspace}/cnf/resources/bnd/feature.props
WLP-DisableAllFeatures-OnConflict=false
kind=ga
WLP-Activation-Type=parallel
edition=base
-features=com.ibm.websphere.appclient.appClient-1.0,com.ibm.websphere.appserver.injection-1.0,com.ibm.websphere.appserver.clientContainerRemoteSupport-1.0
Subsystem-Name=Application Client Support for Server 1.0
IBM-ShortName=appClientSupport-1.0
