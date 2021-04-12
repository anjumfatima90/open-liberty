#
#Mon Apr 12 14:46:11 CDT 2021
symbolicName=com.ibm.websphere.appserver.batchManagement-1.0
visibility=public
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-App-ForceRestart=uninstall, install
WLP-DisableAllFeatures-OnConflict=false
kind=ga
singleton=true
IBM-API-Package=javax.batch.api; type\="spec", javax.batch.api.chunk; type\="spec", javax.batch.api.chunk.listener; type\="spec", javax.batch.api.listener; type\="spec", javax.batch.api.partition; type\="spec", javax.batch.operations; type\="spec", javax.batch.runtime; type\="spec", javax.batch.runtime.context; type\="spec"
edition=base
-features=com.ibm.websphere.appserver.restHandler-1.0,com.ibm.websphere.appserver.transaction-1.2,com.ibm.websphere.appserver.jsonp-1.0;ibm.tolerates\:\="1.1",com.ibm.websphere.appserver.batch-1.0,com.ibm.websphere.appserver.servlet-3.1;ibm.tolerates\:\="4.0",com.ibm.websphere.appserver.jdbc-4.1;ibm.tolerates\:\="4.0,4.2,4.3",com.ibm.websphere.appserver.eeCompatible-7.0;ibm.tolerates\:\="8.0"
-bundles=com.ibm.ws.jbatch.joblog, com.ibm.ws.jbatch.rest
Subsystem-Name=Batch Management 1.0
-files=bin/batchManager.bat, bin/batchManager; ibm.file.encoding\:\=ebcdic, bin/tools/ws-jbatchutil.jar
-jars=com.ibm.ws.jbatch.utility
IBM-ShortName=batchManagement-1.0
