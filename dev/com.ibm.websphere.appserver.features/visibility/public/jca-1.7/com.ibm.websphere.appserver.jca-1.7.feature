#
#Mon Feb 08 16:22:51 CST 2021
symbolicName=com.ibm.websphere.appserver.jca-1.7
visibility=public
-include=~${workspace}/cnf/resources/bnd/feature.props
WLP-DisableAllFeatures-OnConflict=false
kind=ga
singleton=true
IBM-API-Package=com.ibm.ws.jca.service; type\="internal"
WLP-Activation-Type=parallel
Subsystem-Category=JavaEE7Application
edition=base
-features=com.ibm.websphere.appserver.transaction-1.2,com.ibm.websphere.appserver.eeCompatible-7.0;ibm.tolerates\:\="8.0",com.ibm.websphere.appserver.javaeePlatform-7.0,com.ibm.websphere.appserver.javax.connector-1.7,com.ibm.websphere.appserver.internal.jca-1.6
-bundles=com.ibm.ws.app.manager.rar, com.ibm.ws.jca.1.7
Subsystem-Name=Java Connector Architecture 1.7
IBM-ShortName=jca-1.7
