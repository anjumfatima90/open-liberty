#
#Fri Apr 09 10:53:36 CDT 2021
symbolicName=io.openliberty.oauth2.0.internal.ee-9.0
visibility=private
-include=~${workspace}/cnf/resources/bnd/feature.props
singleton=true
kind=beta
edition=core
-features=io.openliberty.appSecurity-4.0,com.ibm.websphere.appserver.servlet-5.0,io.openliberty.pages-3.0
-bundles=io.openliberty.security.oauth.internal.2.0, io.openliberty.security.jwt.internal, io.openliberty.security.common.internal
-files=dev/api/ibm/javadoc/com.ibm.websphere.appserver.api.oauth_1.2-javadoc.zip
