symbolicName=io.openliberty.webBundleSecurity1.0.internal.ee-6.0
visibility=private
-include=~${workspace}/cnf/resources/bnd/feature.props
WLP-DisableAllFeatures-OnConflict=false
kind=ga
singleton=true
WLP-Activation-Type=parallel
-features=com.ibm.websphere.appserver.servlet-3.0;ibm.tolerates:="3.1,4.0"
edition=core
-bundles=com.ibm.ws.webcontainer.security; start-phase:=SERVICE_EARLY, com.ibm.ws.security.authentication.filter, com.ibm.ws.security.authentication.tai, com.ibm.ws.security.sso
