#
#Mon Feb 08 16:22:51 CST 2021
symbolicName=com.ibm.websphere.appserver.microProfile-3.0
visibility=public
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-App-ForceRestart=install, uninstall
WLP-DisableAllFeatures-OnConflict=false
kind=ga
singleton=true
edition=core
-features=com.ibm.websphere.appserver.mpConfig-1.3,io.openliberty.mpCompatible-0.0,com.ibm.websphere.appserver.jsonp-1.1,com.ibm.websphere.appserver.mpJwt-1.1,com.ibm.websphere.appserver.jaxrsClient-2.1,com.ibm.websphere.appserver.mpRestClient-1.3,com.ibm.websphere.appserver.cdi-2.0,com.ibm.websphere.appserver.mpMetrics-2.0,com.ibm.websphere.appserver.mpOpenAPI-1.1,com.ibm.websphere.appserver.jsonb-1.0,com.ibm.websphere.appserver.javax.annotation-1.3,com.ibm.websphere.appserver.mpFaultTolerance-2.0,com.ibm.websphere.appserver.servlet-4.0,com.ibm.websphere.appserver.jaxrs-2.1,com.ibm.websphere.appserver.mpHealth-2.0,com.ibm.websphere.appserver.mpOpenTracing-1.3
Subsystem-Name=MicroProfile 3.0
Subsystem-Version=7.0.0
IBM-ShortName=microProfile-3.0
