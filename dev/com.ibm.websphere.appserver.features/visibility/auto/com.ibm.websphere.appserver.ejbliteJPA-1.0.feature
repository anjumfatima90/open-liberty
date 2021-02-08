#
#Mon Feb 08 16:22:51 CST 2021
IBM-Install-Policy=when-satisfied
symbolicName=com.ibm.websphere.appserver.ejbliteJPA-1.0
kind=ga
-bundles=com.ibm.ws.ejbcontainer.jpa
-include=~${workspace}/cnf/resources/bnd/feature.props
edition=core
IBM-Provision-Capability=osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=com.ibm.websphere.appserver.ejbLiteCore-1.0))", osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(|(osgi.identity\=com.ibm.websphere.appserver.jpa-2.0)(osgi.identity\=com.ibm.websphere.appserver.jpaContainer-2.1)(osgi.identity\=com.ibm.websphere.appserver.jpaContainer-2.2)))"
IBM-App-ForceRestart=install, uninstall
