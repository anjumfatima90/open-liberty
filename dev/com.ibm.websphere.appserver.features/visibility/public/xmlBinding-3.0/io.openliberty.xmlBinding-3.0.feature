#
#Mon Feb 08 16:22:51 CST 2021
symbolicName=io.openliberty.xmlBinding-3.0
visibility=public
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-App-ForceRestart=uninstall, install
kind=beta
singleton=true
WLP-AlsoKnownAs=jaxb-3.0
IBM-API-Package=jakarta.activation; type\="spec", jakarta.xml.bind;  type\="spec", jakarta.xml.bind.annotation;  type\="spec", jakarta.xml.bind.annotation.adapters;  type\="spec", jakarta.xml.bind.attachment;  type\="spec", jakarta.xml.bind.helpers;  type\="spec", jakarta.xml.bind.util;  type\="spec"
WLP-Activation-Type=parallel
edition=core
-features=io.openliberty.jakarta.xmlBinding-3.0,com.ibm.websphere.appserver.eeCompatible-9.0,com.ibm.websphere.appserver.classloading-1.0
-bundles=io.openliberty.xmlBinding.3.0.internal.tools
Subsystem-Name=Jakarta XML Binding 3.0
-files=bin/xmlBinding/xjc.bat, bin/xmlBinding/tools/ws-schemagen.jar, bin/xmlBinding/schemagen; ibm.executable\:\=true; ibm.file.encoding\:\=ebcdic, bin/xmlBinding/xjc; ibm.executable\:\=true; ibm.file.encoding\:\=ebcdic, bin/xmlBinding/tools/ws-xjc.jar, bin/xmlBinding/schemagen.bat
IBM-Process-Types=client, server
IBM-ShortName=xmlBinding-3.0
