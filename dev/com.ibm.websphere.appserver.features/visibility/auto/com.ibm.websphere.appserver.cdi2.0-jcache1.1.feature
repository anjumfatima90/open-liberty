IBM-Install-Policy=when-satisfied
visibility=private
symbolicName=com.ibm.websphere.appserver.cdi2.0-jcache1.1
kind=noship
-bundles=com.ibm.ws.jcache.cdi
-include=~${workspace}/cnf/resources/bnd/feature.props
edition=full
IBM-Provision-Capability=osgi.identity; filter:="(&(type=osgi.subsystem.feature)(osgi.identity=com.ibm.websphere.appserver.cdi-2.0))", osgi.identity; filter:="(&(type=osgi.subsystem.feature)(osgi.identity=com.ibm.websphere.appserver.jcacheContainer-1.1))"
