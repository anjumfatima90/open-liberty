symbolicName=com.ibm.websphere.appserver.connectionManagement-1.0
visibility=private
-include=~${workspace}/cnf/resources/bnd/feature.props
WLP-DisableAllFeatures-OnConflict=false
kind=ga
IBM-API-Package=com.ibm.ws.jca.cm.mbean; type="ibm-api"
WLP-Activation-Type=parallel
edition=core
-features=io.openliberty.connectionManager1.0.internal.ee-6.0;ibm.tolerates:="9.0",com.ibm.websphere.appserver.containerServices-1.0,com.ibm.websphere.appserver.transaction-1.1;ibm.tolerates:="1.2,2.0",com.ibm.websphere.appserver.jcaSecurity-1.0
-files=dev/api/ibm/javadoc/com.ibm.websphere.appserver.api.connectionmanager_1.2-javadoc.zip
-jars=com.ibm.websphere.appserver.api.connectionmanager; location:=dev/api/ibm/
