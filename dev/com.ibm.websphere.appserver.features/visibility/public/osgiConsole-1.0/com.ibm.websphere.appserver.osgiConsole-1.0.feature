#
#Mon Feb 08 16:22:51 CST 2021
symbolicName=com.ibm.websphere.appserver.osgiConsole-1.0
visibility=public
-include=~${workspace}/cnf/resources/bnd/feature.props
WLP-DisableAllFeatures-OnConflict=false
kind=ga
edition=core
-bundles=com.ibm.ws.org.apache.felix.gogo.command; start-phase\:\=SERVICE_EARLY, com.ibm.ws.org.eclipse.equinox.console; start-phase\:\=SERVICE_EARLY, com.ibm.ws.org.apache.felix.gogo.shell; start-phase\:\=SERVICE_EARLY, com.ibm.ws.org.apache.felix.gogo.runtime; start-phase\:\=SERVICE_EARLY
Subsystem-Name=OSGi Debug Console 1.0
IBM-Process-Types=client, server
IBM-ShortName=osgiConsole-1.0
