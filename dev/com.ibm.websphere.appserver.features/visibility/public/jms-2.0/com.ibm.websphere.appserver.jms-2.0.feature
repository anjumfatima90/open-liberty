#
#Fri Apr 09 10:53:36 CDT 2021
symbolicName=com.ibm.websphere.appserver.jms-2.0
visibility=public
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-App-ForceRestart=uninstall
WLP-DisableAllFeatures-OnConflict=false
kind=ga
singleton=true
IBM-API-Package=javax.jms; version\="2.0"; type\="spec"
edition=base
-features=com.ibm.websphere.appserver.transaction-1.2,com.ibm.websphere.appserver.jca-1.7,com.ibm.websphere.appserver.internal.jms-2.0
-bundles=com.ibm.ws.jms20.feature
Subsystem-Name=Java Message Service 2.0
IBM-ShortName=jms-2.0
