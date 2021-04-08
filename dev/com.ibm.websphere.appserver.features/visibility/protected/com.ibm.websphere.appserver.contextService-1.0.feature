symbolicName=com.ibm.websphere.appserver.contextService-1.0
visibility=protected
-include=~${workspace}/cnf/resources/bnd/feature.props
WLP-DisableAllFeatures-OnConflict=false
kind=ga
IBM-API-Package=com.ibm.ws.context.service.serializable; type="internal"
WLP-Activation-Type=parallel
edition=core
-features=com.ibm.websphere.appserver.appLifecycle-1.0
-bundles=com.ibm.ws.resource, com.ibm.ws.javaee.version, com.ibm.ws.context, com.ibm.ws.javaee.metadata.context
