#
#Fri Apr 09 10:53:36 CDT 2021
IBM-Install-Policy=when-satisfied
visibility=private
symbolicName=com.ibm.websphere.appserver.cdi1.2-ejb3.2
kind=ga
-bundles=com.ibm.ws.cdi.1.2.ejb, com.ibm.ws.cdi.ejb.common
-include=~${workspace}/cnf/resources/bnd/feature.props
edition=core
IBM-Provision-Capability=osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=com.ibm.websphere.appserver.cdi-1.2))", osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=com.ibm.websphere.appserver.ejbCore-1.0))"
