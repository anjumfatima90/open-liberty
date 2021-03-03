#
#Wed Mar 03 12:43:55 CST 2021
symbolicName=com.ibm.websphere.appserver.ejbCore-1.0
-include=~${workspace}/cnf/resources/bnd/feature.props
WLP-DisableAllFeatures-OnConflict=false
kind=ga
IBM-API-Package=javax.ejb; type\="spec", javax.ejb.embeddable; type\="spec", javax.ejb.spi; type\="spec"
WLP-Activation-Type=parallel
-features=com.ibm.websphere.appserver.appmanager-1.0,com.ibm.websphere.appserver.javaeeddSchema-1.0,com.ibm.websphere.appserver.javaeePlatform-6.0,com.ibm.websphere.appserver.managedBeansCore-1.0
edition=core
-bundles=com.ibm.ws.app.manager.war, com.ibm.ws.app.manager.ejb
