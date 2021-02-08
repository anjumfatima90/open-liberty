#
#Mon Feb 08 16:22:51 CST 2021
symbolicName=io.openliberty.expressionLanguage-4.0
visibility=public
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-App-ForceRestart=install, uninstall
kind=beta
singleton=true
WLP-AlsoKnownAs=el-4.0
IBM-API-Package=jakarta.el; type\="spec", org.apache.el;  type\="internal", org.apache.el.lang; type\="internal", org.apache.el.util; type\="internal", org.apache.el.stream; type\="internal"
WLP-Activation-Type=parallel
edition=core
-features=io.openliberty.jakarta.expressionLanguage-4.0,com.ibm.websphere.appserver.eeCompatible-9.0
-bundles=io.openliberty.org.apache.jasper.expressionLanguage.4.0
Subsystem-Name=Jakarta Expression Language 4.0
Subsystem-Version=4.0.0
IBM-ShortName=expressionLanguage-4.0
