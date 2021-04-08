IBM-Install-Policy=when-satisfied
visibility=private
symbolicName=com.ibm.websphere.appserver.j2eeManagementMejb-1.0
kind=ga
-bundles=com.ibm.ws.management.j2ee.mejb
-include=~${workspace}/cnf/resources/bnd/feature.props
edition=base
IBM-Provision-Capability=osgi.identity; filter:="(&(type=osgi.subsystem.feature)(osgi.identity=com.ibm.websphere.appserver.j2eeManagement-1.1))", osgi.identity; filter:="(&(type=osgi.subsystem.feature)(osgi.identity=com.ibm.websphere.appserver.ejbRemote-3.2))"
