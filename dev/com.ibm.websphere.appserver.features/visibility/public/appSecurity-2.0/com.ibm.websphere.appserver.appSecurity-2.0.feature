symbolicName=com.ibm.websphere.appserver.appSecurity-2.0
visibility=public
-include=~${workspace}/cnf/resources/bnd/feature.props
WLP-DisableAllFeatures-OnConflict=false
kind=ga
edition=core
-features=com.ibm.websphere.appserver.eeCompatible-6.0;ibm.tolerates:="7.0,8.0",com.ibm.websphere.appserver.security-1.0
-bundles=com.ibm.ws.security.authentication.tai
Subsystem-Name=Application Security 2.0
IBM-ShortName=appSecurity-2.0
