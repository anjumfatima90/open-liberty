#
#Mon Apr 12 14:46:10 CDT 2021
symbolicName=com.ibm.websphere.appserver.wsSecurity1.1-jaxws2.3
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-App-ForceRestart=install, uninstall
IBM-Install-Policy=when-satisfied
kind=noship
edition=full
-features=com.ibm.websphere.appserver.wss4j-2.3,com.ibm.websphere.appserver.httpcommons-1.0,com.ibm.websphere.appserver.ssoCommon-1.0
-bundles=com.ibm.ws.org.joda.time.2.9.9, com.ibm.ws.org.cryptacular.cryptacular.1.2.4, com.ibm.ws.org.jasypt.jasypt.1.9.3, com.ibm.ws.org.apache.cxf.rt.ws.mex.3.4.1, com.ibm.ws.org.apache.cxf.rt.ws.security.3.4.1, com.ibm.ws.org.apache.cxf.rt.security.3.4.1, com.ibm.ws.org.apache.cxf.rt.security.saml.3.4.1, com.ibm.ws.wssecurity.3.4.1, com.ibm.ws.org.apache.commons.logging.1.0.3
IBM-Provision-Capability=osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=com.ibm.websphere.appserver.jaxws-2.3))", osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=com.ibm.websphere.appserver.wsSecurity-1.1))"
