#
#Mon Apr 12 14:46:11 CDT 2021
symbolicName=com.ibm.websphere.appserver.jpaContainer-2.1
visibility=public
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-App-ForceRestart=uninstall, install
WLP-DisableAllFeatures-OnConflict=false
singleton=true
kind=ga
IBM-API-Package=javax.persistence; type\="spec", javax.persistence.spi; type\="spec", javax.persistence.criteria; type\="spec", javax.persistence.metamodel; type\="spec"
-features=com.ibm.websphere.appserver.optional.jaxb-2.2;ibm.tolerates\:\="2.3",com.ibm.websphere.appserver.transaction-1.2,com.ibm.websphere.appserver.javax.annotation-1.2;apiJar\=false,com.ibm.websphere.appserver.classloading-1.0,com.ibm.websphere.appserver.jdbc-4.1;ibm.tolerates\:\="4.2,4.3",com.ibm.websphere.appserver.eeCompatible-7.0,com.ibm.websphere.appserver.javax.persistence-2.1,com.ibm.websphere.appserver.jndi-1.0
edition=core
-bundles=com.ibm.ws.jpa.container.v21, com.ibm.ws.jpa.container, com.ibm.ws.jpa.container.thirdparty
Subsystem-Name=Java Persistence API Container 2.1
IBM-ShortName=jpaContainer-2.1
