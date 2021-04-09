#
#Fri Apr 09 10:53:36 CDT 2021
symbolicName=com.ibm.websphere.appserver.jsonbContainer-1.0
visibility=public
-include=~${workspace}/cnf/resources/bnd/feature.props
WLP-DisableAllFeatures-OnConflict=false
kind=ga
IBM-API-Package=javax.json.bind; type\="spec", javax.json.bind.adapter; type\="spec", javax.json.bind.annotation; type\="spec", javax.json.bind.config; type\="spec", javax.json.bind.serializer; type\="spec", javax.json.bind.spi; type\="spec"
edition=core
-features=com.ibm.websphere.appserver.jsonbImpl-1.0.0
-bundles=com.ibm.ws.jsonb.service
Subsystem-Name=JavaScript Object Notation Binding 1.0 via Bells
IBM-ShortName=jsonbContainer-1.0
