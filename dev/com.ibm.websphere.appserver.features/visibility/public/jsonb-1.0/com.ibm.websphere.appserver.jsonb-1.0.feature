#
#Mon Apr 12 14:46:11 CDT 2021
symbolicName=com.ibm.websphere.appserver.jsonb-1.0
visibility=public
-include=~${workspace}/cnf/resources/bnd/feature.props
WLP-DisableAllFeatures-OnConflict=false
kind=ga
IBM-API-Package=javax.json.bind; type\="spec", javax.json.bind.adapter; type\="spec", javax.json.bind.annotation; type\="spec", javax.json.bind.config; type\="spec", javax.json.bind.serializer; type\="spec", javax.json.bind.spi; type\="spec"
WLP-Activation-Type=parallel
edition=core
-features=com.ibm.websphere.appserver.jsonbInternal-1.0
-bundles=com.ibm.ws.jsonb.service
Subsystem-Name=JavaScript Object Notation Binding 1.0
IBM-ShortName=jsonb-1.0
