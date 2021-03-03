#
#Wed Mar 03 12:43:55 CST 2021
symbolicName=com.ibm.websphere.appserver.javax.mail-1.5
visibility=private
-include=~${workspace}/cnf/resources/bnd/feature.props
WLP-DisableAllFeatures-OnConflict=false
kind=ga
singleton=true
edition=core
-features=com.ibm.websphere.appserver.eeCompatible-7.0;ibm.tolerates\:\="6.0,8.0"
-bundles=com.ibm.ws.com.sun.mail.javax.mail.1.5
Subsystem-Version=1.5
