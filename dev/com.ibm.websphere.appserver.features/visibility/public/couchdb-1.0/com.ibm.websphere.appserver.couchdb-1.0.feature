#
#Mon Feb 08 16:22:51 CST 2021
symbolicName=com.ibm.websphere.appserver.couchdb-1.0
visibility=public
-include=~${workspace}/cnf/resources/bnd/feature.props
WLP-DisableAllFeatures-OnConflict=false
kind=ga
edition=base
-features=com.ibm.websphere.appserver.appLifecycle-1.0,com.ibm.websphere.appserver.containerServices-1.0,com.ibm.websphere.appserver.classloading-1.0
-bundles=com.ibm.ws.couchdb
Subsystem-Name=CouchDB Integration 1.0
IBM-ShortName=couchdb-1.0
