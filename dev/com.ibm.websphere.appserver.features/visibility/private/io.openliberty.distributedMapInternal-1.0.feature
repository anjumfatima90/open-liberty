#
#Fri Apr 09 10:53:36 CDT 2021
symbolicName=io.openliberty.distributedMapInternal-1.0
visibility=private
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-App-ForceRestart=install, uninstall
WLP-DisableAllFeatures-OnConflict=false
kind=ga
singleton=true
WLP-Activation-Type=parallel
edition=core
-features=io.openliberty.servlet.api-3.0;ibm.tolerates\:\="3.1,4.0",com.ibm.websphere.appserver.eeCompatible-6.0;ibm.tolerates\:\="7.0,8.0"
-bundles=com.ibm.ws.dynacache
Subsystem-Version=1.0.0
