#
#Wed Mar 03 12:43:55 CST 2021
symbolicName=com.ibm.websphere.appserver.eeCompatible-8.0
visibility=private
-include=~${workspace}/cnf/resources/bnd/feature.props
WLP-DisableAllFeatures-OnConflict=false
singleton=true
kind=ga
WLP-Activation-Type=parallel
edition=core
-bundles=com.ibm.ws.javaee.version
Subsystem-Version=8.0.0
