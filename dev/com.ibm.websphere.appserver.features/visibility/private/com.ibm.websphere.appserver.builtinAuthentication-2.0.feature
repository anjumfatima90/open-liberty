#
#Wed Mar 03 12:43:55 CST 2021
symbolicName=com.ibm.websphere.appserver.builtinAuthentication-2.0
kind=beta
-bundles=com.ibm.ws.security.authentication, com.ibm.ws.security.credentials.wscred, com.ibm.websphere.security, io.openliberty.security.jaas.internal.common, io.openliberty.security.authentication.internal.builtin, com.ibm.ws.security.mp.jwt.proxy,com.ibm.ws.security.kerberos.auth
Subsystem-Version=2.0.0
-include=~${workspace}/cnf/resources/bnd/feature.props
edition=core
-features=io.openliberty.servlet.api-5.0;apiJar\=false,com.ibm.websphere.appserver.eeCompatible-9.0,com.ibm.websphere.appserver.classloading-1.0,com.ibm.websphere.appserver.ltpa-1.0
singleton=true
