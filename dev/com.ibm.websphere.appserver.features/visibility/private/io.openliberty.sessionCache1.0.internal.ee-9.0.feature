visibility=private
symbolicName=io.openliberty.sessionCache1.0.internal.ee-9.0
kind=beta
-bundles=com.ibm.ws.session.jakarta, com.ibm.ws.session.cache.jakarta, com.ibm.ws.session.store.jakarta, com.ibm.websphere.javaee.jcache.1.1.jakarta; mavenCoordinates="javax.cache:cache-api:1.1.0"
-include=~${workspace}/cnf/resources/bnd/feature.props
edition=core
-features=io.openliberty.servlet.api-5.0;apiJar=false
singleton=true
