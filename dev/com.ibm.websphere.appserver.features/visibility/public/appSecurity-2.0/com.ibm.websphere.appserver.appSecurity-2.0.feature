#
#Mon Feb 08 16:22:51 CST 2021
symbolicName=com.ibm.websphere.appserver.appSecurity-2.0
visibility=public
-include=~${workspace}/cnf/resources/bnd/feature.props
WLP-DisableAllFeatures-OnConflict=false
kind=ga
edition=core
-features=com.ibm.websphere.appserver.security-1.0
-bundles=com.ibm.ws.security.authentication.tai
Subsystem-Name=Application Security 2.0
IBM-ShortName=appSecurity-2.0
