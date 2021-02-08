#
#Mon Feb 08 16:22:51 CST 2021
symbolicName=com.ibm.websphere.appserver.httpcommons-1.0
visibility=private
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-App-ForceRestart=uninstall, install
WLP-DisableAllFeatures-OnConflict=false
kind=ga
WLP-Activation-Type=parallel
edition=core
-bundles=com.ibm.ws.org.apache.httpcomponents, com.ibm.ws.org.apache.commons.codec, com.ibm.ws.org.apache.commons.logging.1.0.3
