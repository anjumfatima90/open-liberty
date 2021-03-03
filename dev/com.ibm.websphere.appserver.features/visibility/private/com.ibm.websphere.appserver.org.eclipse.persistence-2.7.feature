#
#Wed Mar 03 12:43:55 CST 2021
symbolicName=com.ibm.websphere.appserver.org.eclipse.persistence-2.7
-include=~${workspace}/cnf/resources/bnd/feature.props
WLP-DisableAllFeatures-OnConflict=false
singleton=true
kind=ga
WLP-Activation-Type=parallel
edition=core
-features=com.ibm.websphere.appserver.javax.persistence.base-2.2
-bundles=com.ibm.websphere.appserver.thirdparty.eclipselink.2.7; apiJar\=false; location\:\=dev/api/third-party/; mavenCoordinates\="org.eclipse.persistence\:eclipselink\:2.7.1"
IBM-Process-Types=server, client
