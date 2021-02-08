#
#Mon Feb 08 16:22:51 CST 2021
symbolicName=io.openliberty.batch-2.0
visibility=public
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-App-ForceRestart=uninstall, install
kind=beta
singleton=true
IBM-API-Package=jakarta.batch.api; type\="spec", jakarta.batch.api.chunk; type\="spec", jakarta.batch.api.chunk.listener; type\="spec", jakarta.batch.api.listener; type\="spec", jakarta.batch.api.partition; type\="spec", jakarta.batch.operations; type\="spec", jakarta.batch.runtime; type\="spec", jakarta.batch.runtime.context; type\="spec", jakarta.inject;  type\="spec"
WLP-Activation-Type=parallel
edition=base
-features=com.ibm.websphere.appserver.jdbc-4.2;ibm.tolerates\:\="4.3",io.openliberty.persistence-3.0,io.openliberty.jakarta.xmlBinding-3.0,io.openliberty.jakarta.annotation-2.0,com.ibm.websphere.appserver.servlet-5.0,com.ibm.websphere.appserver.eeCompatible-9.0,com.ibm.websphere.appserver.contextService-1.0,io.openliberty.persistenceService-2.0,com.ibm.websphere.appserver.jndi-1.0,io.openliberty.jakarta.cdi-3.0,com.ibm.websphere.appserver.transaction-2.0
-bundles=com.ibm.jbatch.spi, com.ibm.ws.security.credentials, com.ibm.websphere.security, com.ibm.jbatch.container.jakarta, io.openliberty.jakarta.batch.2.0; location\:\="dev/api/spec/,lib/"; mavenCoordinates\="jakarta.batch\:jakarta.batch-api\:2.0.0"
Subsystem-Name=Jakarta Batch 2.0
IBM-ShortName=batch-2.0
