#
#Fri Apr 09 10:53:36 CDT 2021
symbolicName=io.openliberty.webBundleSecurity1.0.internal.ee-9.0
visibility=private
-include=~${workspace}/cnf/resources/bnd/feature.props
singleton=true
kind=beta
WLP-Activation-Type=parallel
-features=com.ibm.websphere.appserver.servlet-5.0
edition=core
-bundles=io.openliberty.webcontainer.security.internal; start-phase\:\=SERVICE_EARLY, io.openliberty.security.authentication.internal.filter, io.openliberty.security.authentication.internal.tai, io.openliberty.security.sso.internal
