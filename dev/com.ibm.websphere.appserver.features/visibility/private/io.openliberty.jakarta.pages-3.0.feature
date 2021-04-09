#
#Fri Apr 09 10:53:36 CDT 2021
symbolicName=io.openliberty.jakarta.pages-3.0
kind=beta
-bundles=io.openliberty.jakarta.pages.3.0; location\:\="dev/api/spec/,lib/"; mavenCoordinates\="jakarta.servlet.jsp\:jakarta.servlet.jsp-api\:3.0.0"
-include=~${workspace}/cnf/resources/bnd/feature.props
edition=core
-features=io.openliberty.servlet.api-5.0;apiJar\=false,io.openliberty.jakarta.expressionLanguage-4.0;apiJar\=false,com.ibm.websphere.appserver.eeCompatible-9.0
singleton=true
WLP-Activation-Type=parallel
