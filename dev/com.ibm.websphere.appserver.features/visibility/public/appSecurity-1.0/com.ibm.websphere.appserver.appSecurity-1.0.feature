#
#Wed Mar 03 12:43:55 CST 2021
symbolicName=com.ibm.websphere.appserver.appSecurity-1.0
visibility=public
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-App-ForceRestart=install, uninstall
superseded-by=appSecurity-2.0,[servlet-3.0],[ldapRegistry-3.0]
WLP-DisableAllFeatures-OnConflict=false
kind=ga
edition=core
-features=com.ibm.websphere.appserver.appSecurity-2.0,com.ibm.websphere.appserver.servlet-3.0;ibm.tolerates\:\="3.1,4.0",com.ibm.websphere.appserver.ldapRegistry-3.0
Subsystem-Name=Application Security 1.0
Subsystem-Version=1.1.0
IBM-ShortName=appSecurity-1.0
