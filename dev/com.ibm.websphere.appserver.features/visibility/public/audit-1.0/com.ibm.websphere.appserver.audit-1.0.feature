#
#Mon Apr 12 14:46:11 CDT 2021
symbolicName=com.ibm.websphere.appserver.audit-1.0
visibility=public
-include=~${workspace}/cnf/resources/bnd/feature.props
WLP-DisableAllFeatures-OnConflict=false
kind=ga
edition=core
-features=com.ibm.websphere.appserver.servlet-3.0;ibm.tolerates\:\="3.1,4.0,5.0",com.ibm.websphere.appserver.auditCollector-1.0
-bundles=com.ibm.ws.security.audit.utils, com.ibm.json4j
Subsystem-Name=Audit 1.0
IBM-ShortName=audit-1.0
