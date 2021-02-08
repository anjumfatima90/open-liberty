#
#Mon Feb 08 16:22:51 CST 2021
IBM-Install-Policy=when-satisfied
visibility=private
symbolicName=com.ibm.websphere.appserver.cdi2.0-ejb3.2
kind=ga
-bundles=com.ibm.ws.cdi.2.0.ejb, com.ibm.ws.cdi.ejb.common
-include=~${workspace}/cnf/resources/bnd/feature.props
edition=core
IBM-Provision-Capability=osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=com.ibm.websphere.appserver.cdi-2.0))", osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=com.ibm.websphere.appserver.ejbCore-1.0))"
