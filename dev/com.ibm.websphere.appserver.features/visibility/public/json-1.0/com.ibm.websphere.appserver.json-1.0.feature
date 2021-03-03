#
#Wed Mar 03 12:43:54 CST 2021
symbolicName=com.ibm.websphere.appserver.json-1.0
visibility=public
-include=~${workspace}/cnf/resources/bnd/feature.props
WLP-DisableAllFeatures-OnConflict=false
kind=ga
IBM-API-Package=com.ibm.json.java; type\="ibm-api", com.ibm.json.xml; type\="ibm-api"
WLP-Activation-Type=parallel
edition=core
-bundles=com.ibm.json4j
Subsystem-Name=JavaScript Object Notation for Java 1.0
-files=dev/api/ibm/javadoc/com.ibm.websphere.appserver.api.json_1.0-javadoc.zip
-jars=com.ibm.websphere.appserver.api.json; location\:\=dev/api/ibm/
IBM-ShortName=json-1.0
