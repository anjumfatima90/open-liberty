#
#Fri Apr 09 10:53:36 CDT 2021
symbolicName=io.openliberty.beanValidation-3.0
visibility=public
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-App-ForceRestart=install, uninstall
kind=beta
singleton=true
IBM-API-Package=jakarta.validation; type\="spec", jakarta.validation.bootstrap; type\="spec", jakarta.validation.constraints; type\="spec", jakarta.validation.constraintvalidation; type\="spec", jakarta.validation.executable; type\="spec", jakarta.validation.groups; type\="spec", jakarta.validation.metadata; type\="spec", jakarta.validation.spi; type\="spec",jakarta.validation.valueextraction; type\="spec",com.ibm.ws.beanvalidation.accessor; type\="internal"
WLP-Activation-Type=parallel
edition=core
-features=com.ibm.websphere.appserver.eeCompatible-9.0,io.openliberty.jakarta.validation-3.0,io.openliberty.jakarta.interceptor-2.0,io.openliberty.beanValidationCore-2.0,com.ibm.websphere.appserver.transaction-2.0,io.openliberty.expressionLanguage-4.0,io.openliberty.jakarta.cdi-3.0
-bundles=com.ibm.ws.beanvalidation.v20.jakarta, com.ibm.ws.org.jboss.logging, com.ibm.ws.com.fasterxml.classmate, io.openliberty.org.hibernate.validator.7.0
Subsystem-Name=Jakarta Bean Validation 3.0
IBM-ShortName=beanValidation-3.0
