#
#Mon Apr 12 14:46:11 CDT 2021
symbolicName=com.ibm.websphere.appserver.jaxrs-2.0
visibility=public
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-App-ForceRestart=uninstall, install
WLP-DisableAllFeatures-OnConflict=false
kind=ga
singleton=true
WLP-Activation-Type=parallel
edition=core
-features=com.ibm.websphere.appserver.internal.jaxrs-2.0,com.ibm.websphere.appserver.eeCompatible-7.0,com.ibm.websphere.appserver.jaxrsClient-2.0
Subsystem-Name=Java RESTful Services 2.0
IBM-ShortName=jaxrs-2.0
