#
#Fri Apr 09 10:53:36 CDT 2021
symbolicName=com.ibm.websphere.appserver.javax.persistence-2.2
-include=~${workspace}/cnf/resources/bnd/feature.props
WLP-DisableAllFeatures-OnConflict=false
kind=ga
singleton=true
WLP-Activation-Type=parallel
edition=core
-features=com.ibm.websphere.appserver.containerServices-1.0,com.ibm.websphere.appserver.javax.persistence.base-2.2,com.ibm.websphere.appserver.eeCompatible-8.0;ibm.tolerates\:\="6.0,7.0"
-bundles=com.ibm.ws.javaee.persistence.api.2.2
IBM-Process-Types=server, client
-jars=com.ibm.websphere.javaee.persistence.2.2; location\:\=dev/api/spec/; mavenCoordinates\="javax.persistence\:javax.persistence-api\:2.2"
