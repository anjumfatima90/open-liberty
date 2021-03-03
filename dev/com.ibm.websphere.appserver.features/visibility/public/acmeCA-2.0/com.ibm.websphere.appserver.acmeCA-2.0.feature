#
#Wed Mar 03 12:43:54 CST 2021
symbolicName=com.ibm.websphere.appserver.acmeCA-2.0
visibility=public
-include=~${workspace}/cnf/resources/bnd/feature.props
WLP-DisableAllFeatures-OnConflict=false
kind=ga
singleton=true
edition=base
-features=com.ibm.websphere.appserver.certificateCreator-2.0,com.ibm.websphere.appserver.restHandler-1.0,com.ibm.wsspi.appserver.webBundle-1.0,com.ibm.websphere.appserver.servlet-4.0;ibm.tolerates\:\="3.1",com.ibm.websphere.appserver.internal.slf4j-1.7.7,com.ibm.websphere.appserver.transportSecurity-1.0
-bundles=com.ibm.ws.security.acme
Subsystem-Name=Automatic Certificate Management Environment (ACME) Support 2.0
Subsystem-Version=2.0
IBM-ShortName=acmeCA-2.0
