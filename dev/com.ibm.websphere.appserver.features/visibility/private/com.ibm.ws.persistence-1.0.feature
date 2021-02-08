#
#Mon Feb 08 16:22:51 CST 2021
symbolicName=com.ibm.ws.persistence-1.0
visibility=private
-include=~${workspace}/cnf/resources/bnd/feature.props
WLP-DisableAllFeatures-OnConflict=false
kind=ga
IBM-API-Package=com.ibm.websphere.persistence.mbean; type\="ibm-api"
WLP-Activation-Type=parallel
edition=base
-features=com.ibm.websphere.appserver.transaction-1.2,com.ibm.websphere.appserver.containerServices-1.0,com.ibm.websphere.appserver.javax.annotation-1.2;apiJar\=false;ibm.tolerates\:\="1.3",com.ibm.websphere.appserver.jdbc-4.1;ibm.tolerates\:\="4.0,4.2,4.3",com.ibm.websphere.appserver.jndi-1.0,com.ibm.websphere.appserver.org.eclipse.persistence-2.6;ibm.tolerates\:\="2.7"
-bundles=com.ibm.ws.persistence, com.ibm.ws.persistence.mbean
-files=dev/api/ibm/javadoc/com.ibm.websphere.appserver.api.persistence_1.0-javadoc.zip, bin/tools/ws-generateddlutil.jar, bin/ddlGen.bat, bin/ddlGen; ibm.file.encoding\:\=ebcdic
-jars=com.ibm.websphere.appserver.api.persistence; location\:\=dev/api/ibm/, com.ibm.ws.persistence.utility
