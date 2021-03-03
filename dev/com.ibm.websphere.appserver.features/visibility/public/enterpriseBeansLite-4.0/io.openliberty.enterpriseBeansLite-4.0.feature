#
#Wed Mar 03 12:43:54 CST 2021
symbolicName=io.openliberty.enterpriseBeansLite-4.0
visibility=public
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-App-ForceRestart=install, uninstall
kind=beta
singleton=true
WLP-AlsoKnownAs=ejbLite-4.0
IBM-API-Package=com.ibm.websphere.ejbcontainer.mbean; type\="ibm-api", com.ibm.websphere.ejbcontainer; type\="internal"
WLP-Activation-Type=parallel
Subsystem-Category=JakartaEE9Application
edition=core
-features=io.openliberty.jakartaeePlatform-9.0,com.ibm.websphere.appserver.eeCompatible-9.0,com.ibm.websphere.appserver.contextService-1.0,io.openliberty.ejbLiteCore-2.0,io.openliberty.jakarta.interceptor-2.0,io.openliberty.jakarta.enterpriseBeans-4.0,com.ibm.websphere.appserver.transaction-2.0
Subsystem-Name=Jakarta Enterprise Beans 4.0 Lite
-bundles=io.openliberty.ejbcontainer.v40.internal, com.ibm.ws.ejbcontainer.timer.jakarta, com.ibm.ws.ejbcontainer.async.jakarta
-files=dev/api/ibm/javadoc/com.ibm.websphere.appserver.api.ejbcontainer_1.0-javadoc.zip
-jars=com.ibm.websphere.appserver.api.ejbcontainer; location\:\=dev/api/ibm/
IBM-ShortName=enterpriseBeansLite-4.0
