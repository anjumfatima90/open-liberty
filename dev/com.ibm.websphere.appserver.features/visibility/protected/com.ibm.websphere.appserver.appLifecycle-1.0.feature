symbolicName=com.ibm.websphere.appserver.appLifecycle-1.0
visibility=protected
-include=~${workspace}/cnf/resources/bnd/feature.props
WLP-DisableAllFeatures-OnConflict=false
kind=ga
WLP-Activation-Type=parallel
edition=core
-bundles=com.ibm.ws.app.manager.lifecycle; start-phase:=SERVICE_EARLY
IBM-Process-Types=server, client
