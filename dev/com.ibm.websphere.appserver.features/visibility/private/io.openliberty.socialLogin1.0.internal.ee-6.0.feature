#
#Fri Apr 09 10:53:36 CDT 2021
symbolicName=io.openliberty.socialLogin1.0.internal.ee-6.0
visibility=private
-include=~${workspace}/cnf/resources/bnd/feature.props
WLP-DisableAllFeatures-OnConflict=false
singleton=true
kind=ga
edition=core
-features=com.ibm.websphere.appserver.servlet-3.0;ibm.tolerates\:\="3.1,4.0"
-bundles=com.ibm.ws.security.social,com.ibm.ws.security.openidconnect.clients.common
