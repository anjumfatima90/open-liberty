#
#Mon Feb 08 16:22:51 CST 2021
symbolicName=com.ibm.websphere.appserver.org.eclipse.persistence-2.6
-include=~${workspace}/cnf/resources/bnd/feature.props
WLP-DisableAllFeatures-OnConflict=false
singleton=true
kind=ga
WLP-Activation-Type=parallel
edition=core
-features=com.ibm.websphere.appserver.javax.persistence.base-2.1
-bundles=com.ibm.websphere.appserver.thirdparty.eclipselink; apiJar\=false; location\:\=dev/api/third-party/; mavenCoordinates\="org.eclipse.persistence\:eclipselink\:2.6.0"
IBM-Process-Types=server, client
