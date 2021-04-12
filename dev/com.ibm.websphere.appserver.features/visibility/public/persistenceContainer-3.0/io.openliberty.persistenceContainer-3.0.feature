#
#Mon Apr 12 14:46:11 CDT 2021
symbolicName=io.openliberty.persistenceContainer-3.0
visibility=public
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-App-ForceRestart=uninstall, install
singleton=true
kind=beta
WLP-AlsoKnownAs=jpaContainer-3.0
IBM-API-Package=jakarta.persistence; type\="spec", jakarta.persistence.spi; type\="spec", jakarta.persistence.criteria; type\="spec", jakarta.persistence.metamodel; type\="spec"
WLP-Activation-Type=parallel
-features=com.ibm.websphere.appserver.jdbc-4.2;ibm.tolerates\:\="4.3",io.openliberty.xmlBinding-3.0,io.openliberty.jakarta.annotation-2.0;apiJar\=false,com.ibm.websphere.appserver.eeCompatible-9.0,com.ibm.websphere.appserver.classloading-1.0,com.ibm.websphere.appserver.jndi-1.0,io.openliberty.jakarta.persistence-3.0,com.ibm.websphere.appserver.transaction-2.0
edition=core
-bundles=com.ibm.ws.jpa.container.v30.jakarta, com.ibm.ws.jpa.container.jakarta, com.ibm.ws.jpa.container.thirdparty.jakarta
Subsystem-Name=Jakarta Persistence 3.0 Container
IBM-ShortName=persistenceContainer-3.0
