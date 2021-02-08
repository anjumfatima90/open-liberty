#
#Mon Feb 08 16:22:51 CST 2021
symbolicName=com.ibm.websphere.appserver.javax.persistence-2.1
-include=~${workspace}/cnf/resources/bnd/feature.props
WLP-DisableAllFeatures-OnConflict=false
kind=ga
singleton=true
WLP-Activation-Type=parallel
edition=core
-features=com.ibm.websphere.appserver.containerServices-1.0,com.ibm.websphere.appserver.javax.persistence.base-2.1,com.ibm.websphere.appserver.eeCompatible-7.0;ibm.tolerates\:\="6.0,8.0"
-bundles=com.ibm.ws.javaee.persistence.api.2.1
IBM-Process-Types=server, client
-jars=com.ibm.websphere.javaee.persistence.2.1; location\:\=dev/api/spec/; mavenCoordinates\="org.eclipse.persistence\:javax.persistence\:2.1.0"
