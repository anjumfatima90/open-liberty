symbolicName=io.openliberty.sessionDatabase1.0.internal.ee-6.0
visibility=private
-include=~${workspace}/cnf/resources/bnd/feature.props
WLP-DisableAllFeatures-OnConflict=false
singleton=true
kind=ga
edition=core
-features=io.openliberty.servlet.api-3.0;apiJar=false;ibm.tolerates:="3.1,4.0"
-bundles=com.ibm.ws.session, com.ibm.ws.session.db, com.ibm.ws.session.store
