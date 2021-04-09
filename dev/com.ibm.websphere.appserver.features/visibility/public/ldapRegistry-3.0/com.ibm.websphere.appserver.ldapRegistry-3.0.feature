#
#Fri Apr 09 10:53:36 CDT 2021
symbolicName=com.ibm.websphere.appserver.ldapRegistry-3.0
visibility=public
-include=~${workspace}/cnf/resources/bnd/feature.props
WLP-DisableAllFeatures-OnConflict=false
kind=ga
edition=core
-features=com.ibm.websphere.appserver.federatedRegistry-1.0
-bundles=com.ibm.ws.security.wim.adapter.ldap, com.ibm.ws.security.kerberos.auth
Subsystem-Name=LDAP User Registry 3.0
IBM-ShortName=ldapRegistry-3.0
