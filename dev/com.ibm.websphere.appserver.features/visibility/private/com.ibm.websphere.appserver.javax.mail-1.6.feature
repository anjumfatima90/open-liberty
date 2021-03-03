#
#Wed Mar 03 12:43:55 CST 2021
symbolicName=com.ibm.websphere.appserver.javax.mail-1.6
visibility=private
-include=~${workspace}/cnf/resources/bnd/feature.props
WLP-DisableAllFeatures-OnConflict=false
kind=ga
singleton=true
WLP-Activation-Type=parallel
edition=core
-features=com.ibm.websphere.appserver.eeCompatible-8.0;ibm.tolerates\:\="6.0,7.0"
-bundles=com.ibm.ws.com.sun.mail.javax.mail.1.6
Subsystem-Version=1.6
