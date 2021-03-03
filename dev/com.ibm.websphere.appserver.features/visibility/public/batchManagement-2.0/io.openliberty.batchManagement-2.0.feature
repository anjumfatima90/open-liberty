#
#Wed Mar 03 12:43:54 CST 2021
symbolicName=io.openliberty.batchManagement-2.0
visibility=public
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-App-ForceRestart=uninstall, install
kind=noship
singleton=true
IBM-API-Package=jakarta.batch.api; type\="spec", jakarta.batch.api.chunk; type\="spec", jakarta.batch.api.chunk.listener; type\="spec", jakarta.batch.api.listener; type\="spec", jakarta.batch.api.partition; type\="spec", jakarta.batch.operations; type\="spec", jakarta.batch.runtime; type\="spec", jakarta.batch.runtime.context; type\="spec"
WLP-Activation-Type=parallel
edition=full
-features=com.ibm.websphere.appserver.restHandler-1.0,com.ibm.websphere.appserver.jdbc-4.2;ibm.tolerates\:\="4.3",io.openliberty.batch-2.0,com.ibm.websphere.appserver.servlet-5.0,com.ibm.websphere.appserver.eeCompatible-9.0,com.ibm.websphere.appserver.transaction-2.0,io.openliberty.jsonp-2.0
-bundles=com.ibm.ws.jbatch.joblog.jakarta, com.ibm.ws.jbatch.rest.jakarta
Subsystem-Name=Batch Management 2.0
-files=bin/batchManager.bat, bin/batchManager; ibm.file.encoding\:\=ebcdic, bin/tools/ws-jbatchutil.jar
-jars=com.ibm.ws.jbatch.utility
IBM-ShortName=batchManagement-2.0
