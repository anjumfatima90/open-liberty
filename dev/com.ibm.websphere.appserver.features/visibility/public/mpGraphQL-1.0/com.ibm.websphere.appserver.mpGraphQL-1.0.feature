symbolicName=com.ibm.websphere.appserver.mpGraphQL-1.0
visibility=public
-include=~${workspace}/cnf/resources/bnd/feature.props
WLP-DisableAllFeatures-OnConflict=false
kind=ga
singleton=true
IBM-API-Package=org.eclipse.microprofile.graphql; type="stable", io.smallrye.graphql.api; type="third-party", io.smallrye.graphql.client.typesafe.api;  type="third-party"
WLP-Activation-Type=parallel
edition=core
-features=com.ibm.websphere.appserver.mpConfig-1.4;ibm.tolerates:="2.0",io.openliberty.mpCompatible-0.0;ibm.tolerates:="4.0",com.ibm.websphere.appserver.javax.annotation-1.3,com.ibm.websphere.appserver.servlet-4.0,com.ibm.websphere.appserver.internal.slf4j-1.7.7,com.ibm.websphere.appserver.org.eclipse.microprofile.graphql-1.0,com.ibm.websphere.appserver.org.reactivestreams.reactive-streams-1.0,com.ibm.websphere.appserver.cdi-2.0,com.ibm.websphere.appserver.jsonb-1.0
-bundles=com.ibm.ws.com.graphql.java, com.ibm.ws.io.smallrye.graphql, com.ibm.ws.org.jboss.logging
Subsystem-Name=MicroProfile GraphQL 1.0
IBM-ShortName=mpGraphQL-1.0
