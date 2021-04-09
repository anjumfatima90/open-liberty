#
#Fri Apr 09 10:53:36 CDT 2021
symbolicName=com.ibm.websphere.appserver.scim-2.0
visibility=public
-include=~${workspace}/cnf/resources/bnd/feature.props
kind=noship
edition=full
-features=com.ibm.websphere.appserver.restHandler-1.0,com.ibm.websphere.appserver.servlet-3.0;ibm.tolerates\:\="3.1,4.0"
-bundles=com.ibm.ws.security.wim.scim.2.0, io.openliberty.com.fasterxml.jackson
Subsystem-Name=System for Cross-domain Identity Management 2.0
IBM-ShortName=scim-2.0
