#
#Fri Apr 09 10:53:36 CDT 2021
symbolicName=com.ibm.websphere.appserver.internal.optional.jaxws-2.2
visibility=private
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-App-ForceRestart=uninstall, install
WLP-DisableAllFeatures-OnConflict=false
kind=ga
singleton=true
WLP-Activation-Type=parallel
edition=core
-bundles=com.ibm.websphere.javaee.jaxws.2.2; require-java\:\="9"; location\:\="dev/api/spec/,lib/"; apiJar\=false
Subsystem-Name=Java Web Services API 2.2
