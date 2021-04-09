#
#Fri Apr 09 10:53:36 CDT 2021
symbolicName=io.openliberty.jwt1.0.internal.ee-9.0
visibility=private
-include=~${workspace}/cnf/resources/bnd/feature.props
singleton=true
kind=beta
edition=core
-features=com.ibm.websphere.appserver.servlet-5.0
-bundles=io.openliberty.security.jwt.internal, io.openliberty.security.common.internal
-files=dev/api/ibm/javadoc/com.ibm.websphere.appserver.api.jwt_1.1-javadoc.zip
