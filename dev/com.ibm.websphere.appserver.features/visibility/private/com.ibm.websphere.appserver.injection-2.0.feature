#
#Mon Feb 08 16:22:51 CST 2021
symbolicName=com.ibm.websphere.appserver.injection-2.0
-include=~${workspace}/cnf/resources/bnd/feature.props
singleton=true
kind=beta
WLP-Activation-Type=parallel
-features=com.ibm.websphere.appserver.containerServices-1.0,com.ibm.websphere.appserver.eeCompatible-9.0,com.ibm.websphere.appserver.anno-2.0
edition=core
-bundles=com.ibm.ws.injection.jakarta
IBM-Process-Types=client, server
