#
#Mon Feb 08 16:22:51 CST 2021
symbolicName=io.openliberty.beanValidationCore-2.0
kind=beta
-bundles=com.ibm.ws.org.apache.commons.lang3, com.ibm.ws.managedobject, com.ibm.ws.org.apache.commons.beanutils.1.9.4, com.ibm.ws.org.apache.commons.collections, com.ibm.ws.javaee.dd, com.ibm.ws.javaee.dd.common, com.ibm.ws.org.apache.commons.logging.1.0.3, com.ibm.ws.beanvalidation.jakarta
-include=~${workspace}/cnf/resources/bnd/feature.props
edition=core
-features=com.ibm.websphere.appserver.containerServices-1.0,com.ibm.websphere.appserver.classloading-1.0,com.ibm.websphere.appserver.injection-2.0,com.ibm.websphere.appserver.anno-2.0
IBM-App-ForceRestart=install, uninstall
WLP-Activation-Type=parallel
