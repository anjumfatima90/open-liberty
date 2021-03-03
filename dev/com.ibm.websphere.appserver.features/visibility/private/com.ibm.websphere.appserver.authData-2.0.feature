#
#Wed Mar 03 12:43:55 CST 2021
symbolicName=com.ibm.websphere.appserver.authData-2.0
kind=beta
-bundles=com.ibm.ws.security.authentication, io.openliberty.security.jaas.internal.common, io.openliberty.security.auth.internal.data
Subsystem-Version=2.0.0
-include=~${workspace}/cnf/resources/bnd/feature.props
edition=base
-features=com.ibm.websphere.appserver.jcaSecurity-1.0
singleton=true
