#
#Fri Apr 09 10:53:36 CDT 2021
symbolicName=io.openliberty.connectionManager1.0.internal.ee-6.0
-include=~${workspace}/cnf/resources/bnd/feature.props
WLP-DisableAllFeatures-OnConflict=false
singleton=true
kind=ga
WLP-Activation-Type=parallel
-features=com.ibm.websphere.appserver.transaction-1.1;ibm.tolerates\:\="1.2",com.ibm.websphere.appserver.javax.connector.internal-1.6;ibm.tolerates\:\="1.7"
edition=core
-bundles=com.ibm.ws.jca.cm
