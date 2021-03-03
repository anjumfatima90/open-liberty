#
#Wed Mar 03 12:43:55 CST 2021
symbolicName=com.ibm.websphere.appserver.jaxrsClient-2.0
visibility=public
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-App-ForceRestart=uninstall, install
WLP-DisableAllFeatures-OnConflict=false
kind=ga
singleton=true
WLP-Activation-Type=parallel
edition=core
-features=com.ibm.websphere.appserver.jaxrs.common-2.0,com.ibm.websphere.appserver.eeCompatible-7.0
-bundles=com.ibm.ws.jaxrs.2.0.client, com.ibm.ws.cxf.client
Subsystem-Name=Java RESTful Services Client 2.0
IBM-ShortName=jaxrsClient-2.0
