#
#Mon Feb 08 16:22:51 CST 2021
symbolicName=com.ibm.websphere.appserver.jsonp-1.0
visibility=public
-include=~${workspace}/cnf/resources/bnd/feature.props
WLP-DisableAllFeatures-OnConflict=false
kind=ga
singleton=true
IBM-API-Package=javax.json; type\="spec", javax.json.stream; type\="spec", javax.json.spi; type\="spec"
WLP-Activation-Type=parallel
edition=core
-features=com.ibm.websphere.appserver.jsonpImpl-1.0.0
Subsystem-Name=JavaScript Object Notation Processing 1.0
IBM-ShortName=jsonp-1.0
