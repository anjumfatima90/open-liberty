#
#Mon Feb 08 16:22:51 CST 2021
symbolicName=io.openliberty.restfulWS-3.0
visibility=public
-include=~${workspace}/cnf/resources/bnd/feature.props
kind=beta
singleton=true
WLP-AlsoKnownAs=jaxrs-3.0
IBM-API-Package=com.ibm.websphere.jaxrs.server; type\="ibm-api", IBM-App-ForceRestart\: uninstall, install
WLP-Activation-Type=parallel
edition=core
-features=io.openliberty.restfulWSClient-3.0,com.ibm.websphere.appserver.eeCompatible-9.0
-bundles=io.openliberty.org.jboss.resteasy.server.jakarta
Subsystem-Name=Jakarta RESTful Web Services 3.0
IBM-ShortName=restfulWS-3.0
