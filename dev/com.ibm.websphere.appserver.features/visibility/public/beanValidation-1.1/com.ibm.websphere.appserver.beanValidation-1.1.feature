#
#Fri Apr 09 10:53:36 CDT 2021
symbolicName=com.ibm.websphere.appserver.beanValidation-1.1
visibility=public
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-App-ForceRestart=install, uninstall
WLP-DisableAllFeatures-OnConflict=false
kind=ga
singleton=true
IBM-API-Package=javax.validation; type\="spec", javax.validation.bootstrap; type\="spec", javax.validation.constraints; type\="spec", javax.validation.constraintvalidation; type\="spec", javax.validation.executable; type\="spec", javax.validation.groups; type\="spec", javax.validation.metadata; type\="spec", javax.validation.spi; type\="spec",com.ibm.ws.beanvalidation.accessor; type\="internal"
edition=core
-features=com.ibm.websphere.appserver.internal.optional.jaxb-2.2;ibm.tolerates\:\="2.3",com.ibm.websphere.appserver.transaction-1.2,com.ibm.websphere.appserver.eeCompatible-7.0,com.ibm.websphere.appserver.javax.cdi-1.2,com.ibm.websphere.appserver.internal.slf4j-1.7.7,com.ibm.websphere.appserver.el-3.0,com.ibm.websphere.appserver.beanValidationCore-1.0,com.ibm.websphere.appserver.javax.interceptor-1.2,com.ibm.websphere.appserver.javax.validation-1.1
-bundles=com.ibm.ws.org.apache.commons.weaver.1.1, com.ibm.ws.beanvalidation.v11, com.ibm.ws.org.apache.bval.1.1.0, com.ibm.ws.com.fasterxml.classmate
Subsystem-Name=Bean Validation 1.1
IBM-ShortName=beanValidation-1.1
