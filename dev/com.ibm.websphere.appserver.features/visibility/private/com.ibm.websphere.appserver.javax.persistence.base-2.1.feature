#
#Mon Feb 08 16:22:51 CST 2021
symbolicName=com.ibm.websphere.appserver.javax.persistence.base-2.1
-include=~${workspace}/cnf/resources/bnd/feature.props
WLP-DisableAllFeatures-OnConflict=false
singleton=true
kind=ga
WLP-Activation-Type=parallel
edition=core
-features=com.ibm.websphere.appserver.containerServices-1.0,com.ibm.websphere.appserver.eeCompatible-7.0;ibm.tolerates\:\="6.0,8.0"
-bundles=com.ibm.ws.javaee.persistence.2.1; location\:\=lib/
IBM-Process-Types=server, client
