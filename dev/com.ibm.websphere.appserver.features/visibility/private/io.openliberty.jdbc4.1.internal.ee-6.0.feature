#
#Fri Apr 09 10:53:36 CDT 2021
symbolicName=io.openliberty.jdbc4.1.internal.ee-6.0
-include=~${workspace}/cnf/resources/bnd/feature.props
WLP-DisableAllFeatures-OnConflict=false
singleton=true
kind=ga
WLP-Activation-Type=parallel
-features=com.ibm.websphere.appserver.transaction-1.2;ibm.tolerates\:\="1.1"
edition=core
-bundles=com.ibm.ws.jdbc,com.ibm.ws.jdbc.4.1
