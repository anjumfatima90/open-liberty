#
#Fri Apr 09 10:53:36 CDT 2021
symbolicName=io.openliberty.mdb-4.0
visibility=public
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-App-ForceRestart=install, uninstall
kind=beta
singleton=true
IBM-API-Package=com.ibm.ws.ejbcontainer.mdb; type\="internal"
WLP-Activation-Type=parallel
Subsystem-Category=JakartaEE9Application
edition=base
-features=io.openliberty.jakartaeePlatform-9.0,com.ibm.websphere.appserver.eeCompatible-9.0,io.openliberty.connectors-2.0,io.openliberty.ejbCore-2.0,io.openliberty.jakarta.interceptor-2.0,io.openliberty.jakarta.enterpriseBeans-4.0,com.ibm.websphere.appserver.transaction-2.0
Subsystem-Name=Jakarta Enterprise Beans 4.0 Message-Driven Beans
-bundles=com.ibm.ws.ejbcontainer.mdb.jakarta, io.openliberty.ejbcontainer.v40.internal
IBM-ShortName=mdb-4.0
