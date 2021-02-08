#
#Mon Feb 08 16:22:51 CST 2021
symbolicName=com.ibm.websphere.appserver.builtinAuthorization-1.0
kind=ga
-bundles=com.ibm.ws.security.authorization, com.ibm.websphere.security, com.ibm.ws.security.authorization.builtin
-include=~${workspace}/cnf/resources/bnd/feature.props
edition=core
-features=com.ibm.websphere.appserver.securityInfrastructure-1.0
WLP-DisableAllFeatures-OnConflict=false
