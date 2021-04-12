#
#Mon Apr 12 14:46:11 CDT 2021
symbolicName=com.ibm.websphere.appserver.constrainedDelegation-1.0
visibility=public
-include=~${workspace}/cnf/resources/bnd/feature.props
WLP-DisableAllFeatures-OnConflict=false
kind=ga
singleton=true
IBM-API-Package=com.ibm.websphere.security.s4u2proxy; type\="ibm-api"
edition=core
-features=com.ibm.websphere.appserver.eeCompatible-6.0;ibm.tolerates\:\="7.0,8.0,9.0"
-bundles=com.ibm.ws.security.kerberos.java8
Subsystem-Name=Kerberos Constrained Delegation for SPNEGO 1.0
-files=dev/api/ibm/javadoc/com.ibm.websphere.appserver.api.constrainedDelegation_1.0-javadoc.zip
-jars=com.ibm.websphere.appserver.api.constrainedDelegation; location\:\=dev/api/ibm/
IBM-ShortName=constrainedDelegation-1.0
