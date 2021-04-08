visibility=private
symbolicName=io.openliberty.openidConnectServer1.0.internal.ee-9.0
kind=noship
-bundles=io.openliberty.security.common.internal, io.openliberty.security.openidconnect.internal.clients.common, io.openliberty.security.openidconnect.internal.server
-include=~${workspace}/cnf/resources/bnd/feature.props
edition=full
-features=com.ibm.websphere.appserver.servlet-5.0,io.openliberty.pages-3.0,io.openliberty.jakarta.cdi-3.0;apiJar=false
singleton=true
