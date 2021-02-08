#
#Mon Feb 08 16:22:51 CST 2021
IBM-Install-Policy=when-satisfied
symbolicName=com.ibm.websphere.appserver.csiv2-1.0
kind=ga
-bundles=com.ibm.ws.security.csiv2.common, com.ibm.ws.security.csiv2
-include=~${workspace}/cnf/resources/bnd/feature.props
edition=base
-features=com.ibm.websphere.appserver.transaction-1.2,com.ibm.websphere.appserver.security-1.0
IBM-Provision-Capability=osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=com.ibm.websphere.appserver.ejbRemote-3.2))", osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(|(osgi.identity\=com.ibm.websphere.appserver.appSecurity-2.0)(osgi.identity\=com.ibm.websphere.appserver.appSecurity-3.0)))"
