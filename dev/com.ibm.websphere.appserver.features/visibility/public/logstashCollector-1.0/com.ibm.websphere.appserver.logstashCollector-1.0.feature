#
#Mon Apr 12 14:46:11 CDT 2021
symbolicName=com.ibm.websphere.appserver.logstashCollector-1.0
Manifest-Version=1.0
visibility=public
-include=~${workspace}/cnf/resources/bnd/feature.props
WLP-DisableAllFeatures-OnConflict=false
kind=ga
singleton=true
edition=core
-features=com.ibm.websphere.appserver.ssl-1.0
-bundles=com.ibm.ws.collector, com.ibm.ws.logstash.collector, com.ibm.ws.logstash.collector.1.0
Subsystem-Name=Logstash Collector 1.0
IBM-ShortName=logstashCollector-1.0
