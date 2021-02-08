#
#Mon Feb 08 16:22:51 CST 2021
symbolicName=com.ibm.websphere.appserver.jcacheContainer-1.1
Manifest-Version=1.0
visibility=public
-include=~${workspace}/cnf/resources/bnd/feature.props
kind=noship
IBM-API-Package=javax.cache; type\="spec", javax.cache.annotation; type\="spec", javax.cache.configuration; type\="spec", javax.cache.event; type\="spec", javax.cache.expiry; type\="spec", javax.cache.integration; type\="spec", javax.cache.management; type\="spec", javax.cache.processor; type\="spec", javax.cache.spi; type\="spec"
edition=full
-features=com.ibm.websphere.appserver.classloading-1.0
-bundles=com.ibm.websphere.javaee.jcache.1.1; location\:\="dev/api/spec/,lib/"; mavenCoordinates\="javax.cache\:cache-api\:1.1.0"
Subsystem-Name=JCache spec API and container integration
IBM-ShortName=jcacheContainer-1.1
