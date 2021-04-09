#
#Fri Apr 09 10:53:36 CDT 2021
symbolicName=com.ibm.websphere.appserver.wsSecurity1.1-jaxws2.2
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-App-ForceRestart=install, uninstall
IBM-Install-Policy=when-satisfied
kind=ga
edition=base
-features=com.ibm.websphere.appserver.internal.slf4j-1.7.7,com.ibm.websphere.appserver.wss4j-1.0
-bundles=com.ibm.ws.org.opensaml.xmltooling.1.4.4, com.ibm.ws.org.joda.time.1.6.2, com.ibm.ws.org.opensaml.opensaml.2.6.1, com.ibm.ws.prereq.wsdl4j.1.6.2, com.ibm.ws.net.sf.ehcache.core.2.5.2, com.ibm.ws.org.apache.cxf.ws.mex.2.6.2, com.ibm.ws.wssecurity, com.ibm.ws.org.apache.cxf.ws.security.2.6.2, com.ibm.ws.org.opensaml.openws.1.5.6, com.ibm.ws.org.apache.commons.logging.1.0.3
IBM-Provision-Capability=osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(|(osgi.identity\=com.ibm.websphere.appserver.jaxws-2.2)))", osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=com.ibm.websphere.appserver.wsSecurity-1.1))"
