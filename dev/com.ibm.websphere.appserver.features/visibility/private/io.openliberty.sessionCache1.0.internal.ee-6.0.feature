symbolicName=io.openliberty.sessionCache1.0.internal.ee-6.0
visibility=private
-include=~${workspace}/cnf/resources/bnd/feature.props
WLP-DisableAllFeatures-OnConflict=false
singleton=true
kind=ga
edition=core
-features=io.openliberty.servlet.api-4.0;apiJar=false;ibm.tolerates:="3.1,3.0"
-bundles=com.ibm.ws.session, com.ibm.ws.session.cache, com.ibm.ws.session.store, com.ibm.websphere.javaee.jcache.1.1; mavenCoordinates="javax.cache:cache-api:1.1.0"
