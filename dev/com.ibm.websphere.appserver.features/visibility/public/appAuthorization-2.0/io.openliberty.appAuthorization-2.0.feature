#
#Mon Feb 08 16:22:51 CST 2021
symbolicName=io.openliberty.appAuthorization-2.0
visibility=public
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-Install-Policy=when-satisfied
IBM-App-ForceRestart=install, uninstall
kind=beta
WLP-AlsoKnownAs=jacc-2.0
IBM-API-Package=jakarta.security.jacc; type\="spec", com.ibm.wsspi.security.authorization.jacc; type\="ibm-api"
edition=core
-features=io.openliberty.servlet.api-5.0,com.ibm.websphere.appserver.javaeedd-1.0,io.openliberty.appSecurity-4.0,com.ibm.websphere.appserver.containerServices-1.0,com.ibm.websphere.appserver.eeCompatible-9.0,io.openliberty.jakarta.authorization-2.0
-bundles=io.openliberty.security.authorization.internal.jacc
Subsystem-Name=Jakarta Authorization 2.0
-files=dev/api/ibm/javadoc/com.ibm.websphere.appserver.api.jacc_1.0-javadoc.zip
-jars=io.openliberty.jacc.2.0; location\:\=dev/api/ibm/
IBM-ShortName=appAuthorization-2.0
