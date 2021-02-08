#
#Mon Feb 08 16:22:51 CST 2021
symbolicName=com.ibm.websphere.appserver.monitor-1.0
Manifest-Version=1.0
visibility=public
-include=~${workspace}/cnf/resources/bnd/feature.props
WLP-DisableAllFeatures-OnConflict=false
kind=ga
IBM-API-Package=com.ibm.websphere.monitor.jmx; type\="ibm-api", com.ibm.websphere.monitor.annotation; type\="internal", com.ibm.websphere.monitor.meters; type\="internal", com.ibm.websphere.pmi.client; type\="internal", com.ibm.websphere.pmi.server; type\="internal", com.ibm.websphere.pmi.stat; type\="internal"
edition=core
-features=com.ibm.websphere.appserver.containerServices-1.0
-bundles=com.ibm.ws.monitor
Subsystem-Name=Performance Monitoring 1.0
-files=dev/api/ibm/javadoc/com.ibm.websphere.appserver.api.monitor_1.1-javadoc.zip
-jars=com.ibm.websphere.appserver.api.monitor; location\:\=dev/api/ibm/
IBM-ShortName=monitor-1.0
