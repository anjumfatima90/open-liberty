#
#Wed Mar 03 12:43:55 CST 2021
symbolicName=com.ibm.websphere.appserver.internal.jms-2.0
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-App-ForceRestart=uninstall
WLP-DisableAllFeatures-OnConflict=false
kind=ga
singleton=true
IBM-API-Package=javax.jms; version\="2.0"; type\="spec"
edition=base
-features=com.ibm.websphere.appserver.transaction-1.2,com.ibm.websphere.appserver.javaeePlatform-7.0,com.ibm.websphere.appserver.internal.jca-1.6,com.ibm.websphere.appserver.javax.connector.internal-1.7
-bundles=com.ibm.websphere.javaee.jms.2.0; location\:\="dev/api/spec/,lib/"; mavenCoordinates\="javax.jms\:javax.jms-api\:2.0", com.ibm.ws.messaging.jmsspec.common
