#
#Mon Feb 08 16:22:51 CST 2021
symbolicName=io.openliberty.batchManagement2.0-messaging3.0
visibility=private
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-Install-Policy=when-satisfied
kind=noship
WLP-Activation-Type=parallel
edition=full
-features=io.openliberty.mdb-4.0,com.ibm.websphere.appserver.transaction-2.0
-bundles=com.ibm.ws.jbatch.jms.jakarta
IBM-Provision-Capability=osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=io.openliberty.messaging-3.0.internal))", osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=io.openliberty.batchManagement-2.0))"
