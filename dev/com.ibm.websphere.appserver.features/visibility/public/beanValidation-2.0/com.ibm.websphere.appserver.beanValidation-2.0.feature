#
#Wed Mar 03 12:43:54 CST 2021
symbolicName=com.ibm.websphere.appserver.beanValidation-2.0
visibility=public
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-App-ForceRestart=install, uninstall
WLP-DisableAllFeatures-OnConflict=false
kind=ga
singleton=true
IBM-API-Package=javax.validation; type\="spec", javax.validation.bootstrap; type\="spec", javax.validation.constraints; type\="spec", javax.validation.constraintvalidation; type\="spec", javax.validation.executable; type\="spec", javax.validation.groups; type\="spec", javax.validation.metadata; type\="spec", javax.validation.spi; type\="spec",javax.validation.valueextraction; type\="spec",com.ibm.ws.beanvalidation.accessor; type\="internal"
WLP-Activation-Type=parallel
edition=core
-features=com.ibm.websphere.appserver.internal.optional.jaxb-2.2;ibm.tolerates\:\="2.3",com.ibm.websphere.appserver.transaction-1.2,com.ibm.websphere.appserver.eeCompatible-8.0,com.ibm.websphere.appserver.el-3.0,com.ibm.websphere.appserver.beanValidationCore-1.0,com.ibm.websphere.appserver.javax.cdi-2.0,com.ibm.websphere.appserver.javax.interceptor-1.2,com.ibm.websphere.appserver.javax.validation-2.0
-bundles=com.ibm.ws.beanvalidation.v20, com.ibm.ws.org.hibernate.validator, com.ibm.ws.org.jboss.logging, com.ibm.ws.com.fasterxml.classmate
Subsystem-Name=Bean Validation 2.0
IBM-ShortName=beanValidation-2.0
