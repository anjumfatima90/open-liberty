symbolicName=com.ibm.websphere.appserver.sessionMonitor-1.0
Manifest-Version=1.0
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-Install-Policy=when-satisfied
kind=ga
IBM-API-Package=com.ibm.websphere.session.monitor; type="ibm-api"
edition=core
-bundles=com.ibm.ws.session.monitor
-files=dev/api/ibm/javadoc/com.ibm.websphere.appserver.api.sessionstats_1.0-javadoc.zip
IBM-Provision-Capability=osgi.identity; filter:="(&(type=osgi.subsystem.feature)(osgi.identity=com.ibm.websphere.appserver.monitor-1.0))", osgi.identity; filter:="(&(type=osgi.subsystem.feature)(|(osgi.identity=com.ibm.websphere.appserver.servlet-3.0)(osgi.identity=com.ibm.websphere.appserver.servlet-3.1)(osgi.identity=com.ibm.websphere.appserver.servlet-4.0)(osgi.identity=com.ibm.websphere.appserver.servlet-5.0)))"
-jars=com.ibm.websphere.appserver.api.sessionstats; location:=dev/api/ibm/
