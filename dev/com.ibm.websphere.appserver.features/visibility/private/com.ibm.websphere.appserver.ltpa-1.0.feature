#
#Mon Feb 08 16:22:51 CST 2021
symbolicName=com.ibm.websphere.appserver.ltpa-1.0
kind=ga
-bundles=com.ibm.ws.security.credentials, com.ibm.ws.security.token, com.ibm.websphere.security, com.ibm.ws.security.credentials.ssotoken, com.ibm.ws.security.token.ltpa, com.ibm.ws.crypto.ltpakeyutil, com.ibm.ws.security.token.s4u2
-include=~${workspace}/cnf/resources/bnd/feature.props
edition=core
-features=com.ibm.websphere.appserver.containerServices-1.0
WLP-DisableAllFeatures-OnConflict=false
