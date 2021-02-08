#
#Mon Feb 08 16:22:51 CST 2021
symbolicName=com.ibm.websphere.appserver.jcaJ2eeManagement-1.0
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-Install-Policy=when-satisfied
singleton=true
kind=ga
WLP-Activation-Type=parallel
edition=base
-bundles=com.ibm.ws.jca.management.j2ee
IBM-Provision-Capability=osgi.identity;filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=com.ibm.websphere.appserver.jca-1.7))", osgi.identity;filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=com.ibm.websphere.appserver.j2eeManagement-1.1))"
