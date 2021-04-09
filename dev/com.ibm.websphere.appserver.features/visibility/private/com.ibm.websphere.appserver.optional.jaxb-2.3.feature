#
#Fri Apr 09 10:53:36 CDT 2021
symbolicName=com.ibm.websphere.appserver.optional.jaxb-2.3
visibility=private
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-App-ForceRestart=uninstall, install
kind=noship
singleton=true
IBM-API-Package=javax.activation; require-java\:\="9"; type\="spec", javax.xml.bind; type\="spec", javax.xml.bind.annotation; type\="spec", javax.xml.bind.annotation.adapters; type\="spec", javax.xml.bind.attachment; type\="spec", javax.xml.bind.helpers; type\="spec", javax.xml.bind.util; type\="spec"
edition=full
-features=com.ibm.websphere.appserver.internal.optional.jaxb-2.3
Subsystem-Name=Java XML Bindings 2.3
IBM-Process-Types=client, server
