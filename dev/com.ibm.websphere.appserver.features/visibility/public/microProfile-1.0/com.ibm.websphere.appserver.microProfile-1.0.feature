#
#Wed Mar 03 12:43:54 CST 2021
symbolicName=com.ibm.websphere.appserver.microProfile-1.0
visibility=public
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-App-ForceRestart=install, uninstall
WLP-DisableAllFeatures-OnConflict=false
kind=ga
singleton=true
edition=core
-features=com.ibm.websphere.appserver.jsonp-1.0,io.openliberty.mpCompatible-0.0,com.ibm.websphere.appserver.cdi-1.2,com.ibm.websphere.appserver.jaxrs-2.0
Subsystem-Name=MicroProfile 1.0
Subsystem-Version=7.0.0
IBM-ShortName=microProfile-1.0
