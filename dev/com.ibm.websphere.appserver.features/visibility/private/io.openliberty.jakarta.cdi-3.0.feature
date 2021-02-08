#
#Mon Feb 08 16:22:51 CST 2021
symbolicName=io.openliberty.jakarta.cdi-3.0
kind=beta
-bundles=io.openliberty.jakarta.cdi.3.0; location\:\="dev/api/spec/,lib/"; mavenCoordinates\="jakarta.enterprise\:jakarta.enterprise.cdi-api\:3.0.0"
-include=~${workspace}/cnf/resources/bnd/feature.props
edition=core
-features=io.openliberty.jakarta.expressionLanguage-4.0;apiJar\=false,com.ibm.websphere.appserver.eeCompatible-9.0,io.openliberty.jakarta.interceptor-2.0
singleton=true
WLP-Activation-Type=parallel
