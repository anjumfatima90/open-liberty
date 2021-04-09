#
#Fri Apr 09 10:53:36 CDT 2021
symbolicName=com.ibm.websphere.appserver.connectionpoolmonitor-1.0
Manifest-Version=1.0
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-Install-Policy=when-satisfied
kind=ga
IBM-API-Package=com.ibm.websphere.connectionpool.monitor; type\="ibm-api"
edition=core
-bundles=com.ibm.ws.connectionpool.monitor
-files=dev/api/ibm/javadoc/com.ibm.websphere.appserver.api.connectionpool_1.1-javadoc.zip
IBM-Provision-Capability=osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=com.ibm.websphere.appserver.monitor-1.0))", osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=com.ibm.websphere.appserver.connectionManagement-1.0))"
-jars=com.ibm.websphere.appserver.api.connectionpool; location\:\=dev/api/ibm/
