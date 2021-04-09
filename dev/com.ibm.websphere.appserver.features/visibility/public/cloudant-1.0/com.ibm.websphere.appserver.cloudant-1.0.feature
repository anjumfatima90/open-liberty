#
#Fri Apr 09 10:53:36 CDT 2021
symbolicName=com.ibm.websphere.appserver.cloudant-1.0
visibility=public
-include=~${workspace}/cnf/resources/bnd/feature.props
WLP-DisableAllFeatures-OnConflict=false
kind=ga
edition=base
-features=com.ibm.websphere.appserver.appLifecycle-1.0,com.ibm.websphere.appserver.containerServices-1.0,com.ibm.websphere.appserver.classloading-1.0
-bundles=com.ibm.ws.cloudant, com.ibm.ws.security.auth.data.common
Subsystem-Name=Cloudant Integration 1.0
IBM-ShortName=cloudant-1.0
