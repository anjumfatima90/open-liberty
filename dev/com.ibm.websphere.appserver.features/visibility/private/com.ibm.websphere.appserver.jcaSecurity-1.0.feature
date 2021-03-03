#
#Wed Mar 03 12:43:55 CST 2021
symbolicName=com.ibm.websphere.appserver.jcaSecurity-1.0
kind=ga
-bundles=com.ibm.ws.security.auth.data.common, com.ibm.ws.security.authentication, com.ibm.ws.security.credentials, com.ibm.ws.security.kerberos.auth,com.ibm.websphere.security
-include=~${workspace}/cnf/resources/bnd/feature.props
edition=core
-features=com.ibm.websphere.appserver.containerServices-1.0
WLP-DisableAllFeatures-OnConflict=false
WLP-Activation-Type=parallel
