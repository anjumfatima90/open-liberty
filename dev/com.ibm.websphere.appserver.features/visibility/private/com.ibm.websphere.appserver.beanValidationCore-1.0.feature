#
#Wed Mar 03 12:43:55 CST 2021
symbolicName=com.ibm.websphere.appserver.beanValidationCore-1.0
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-App-ForceRestart=install, uninstall
WLP-DisableAllFeatures-OnConflict=false
kind=ga
WLP-Activation-Type=parallel
-features=com.ibm.websphere.appserver.containerServices-1.0,com.ibm.websphere.appserver.injection-1.0,com.ibm.websphere.appserver.classloading-1.0,com.ibm.websphere.appserver.anno-1.0
edition=core
-bundles=com.ibm.ws.org.apache.commons.lang3, com.ibm.ws.managedobject, com.ibm.ws.org.apache.commons.beanutils.1.9.4, com.ibm.ws.org.apache.commons.collections, com.ibm.ws.javaee.dd, com.ibm.ws.javaee.dd.common, com.ibm.ws.org.apache.commons.logging.1.0.3, com.ibm.ws.beanvalidation
