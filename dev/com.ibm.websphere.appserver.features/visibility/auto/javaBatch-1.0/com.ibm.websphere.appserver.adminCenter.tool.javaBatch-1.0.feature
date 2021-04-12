#
#Mon Apr 12 14:46:10 CDT 2021
symbolicName=com.ibm.websphere.appserver.adminCenter.tool.javaBatch-1.0
visibility=private
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-Install-Policy=when-satisfied
kind=ga
Subsystem-Icon=OSGI-INF/javaBatch_142.png, OSGI-INF/javaBatch_78.png; size\=78, OSGI-INF/javaBatch_142.png; size\=142
Subsystem-Category=adminCenter
edition=base
-bundles=com.ibm.ws.ui.tool.javaBatch
Subsystem-Name=Java Batch
IBM-Provision-Capability=osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=com.ibm.websphere.appserver.adminCenter-1.0))",osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=com.ibm.websphere.appserver.batchManagement-1.0))"
Subsystem-Version=1.0.0
IBM-ShortName=javaBatch-1.0
IBM-Feature-Version=2
