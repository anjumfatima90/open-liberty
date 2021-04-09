#
#Fri Apr 09 10:53:36 CDT 2021
symbolicName=com.ibm.websphere.appserver.optional.jaxb-2.2
visibility=private
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-App-ForceRestart=uninstall, install
WLP-DisableAllFeatures-OnConflict=false
kind=ga
singleton=true
IBM-API-Package=javax.activation; type\="spec"; require-java\:\="9", javax.xml.bind; type\="spec"; require-java\:\="9", javax.xml.bind.annotation; type\="spec"; require-java\:\="9", javax.xml.bind.annotation.adapters; type\="spec"; require-java\:\="9", javax.xml.bind.attachment; type\="spec"; require-java\:\="9", javax.xml.bind.helpers; type\="spec"; require-java\:\="9", javax.xml.bind.util; type\="spec"; require-java\:\="9"
WLP-Activation-Type=parallel
edition=core
-features=com.ibm.websphere.appserver.internal.optional.jaxb-2.2
Subsystem-Name=Java XML Bindings 2.2 for Java 9 and above
IBM-Process-Types=client, server
