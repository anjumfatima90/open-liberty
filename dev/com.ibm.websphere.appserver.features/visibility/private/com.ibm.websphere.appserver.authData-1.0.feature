#
#Wed Mar 03 12:43:55 CST 2021
symbolicName=com.ibm.websphere.appserver.authData-1.0
-include=~${workspace}/cnf/resources/bnd/feature.props
WLP-DisableAllFeatures-OnConflict=false
singleton=true
kind=ga
edition=base
-features=com.ibm.websphere.appserver.jcaSecurity-1.0
-bundles=com.ibm.ws.security.authentication, com.ibm.ws.security.jaas.common, com.ibm.ws.security.auth.data
Subsystem-Version=1.0.0
