#
#Mon Feb 08 16:22:51 CST 2021
IBM-Install-Policy=when-satisfied
symbolicName=com.ibm.websphere.appserver.csiv2Client-1.0
kind=ga
-bundles=com.ibm.ws.security.csiv2.client, com.ibm.ws.security.csiv2.common, com.ibm.websphere.security, com.ibm.websphere.security.impl
-include=~${workspace}/cnf/resources/bnd/feature.props
edition=base
-features=com.ibm.websphere.appserver.iiopclient-1.0
WLP-DisableAllFeatures-OnConflict=false
