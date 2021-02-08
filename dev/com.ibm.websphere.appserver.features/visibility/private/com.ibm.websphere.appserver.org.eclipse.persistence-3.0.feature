#
#Mon Feb 08 16:22:51 CST 2021
symbolicName=com.ibm.websphere.appserver.org.eclipse.persistence-3.0
-include=~${workspace}/cnf/resources/bnd/feature.props
singleton=true
kind=beta
WLP-Activation-Type=parallel
-features=io.openliberty.jakarta.persistence.base-3.0
edition=base
-bundles=io.openliberty.jpa.3.0.thirdparty; apiJar\=false; location\:\=dev/api/third-party/; mavenCoordinates\="org.eclipse.persistence\:eclipselink\:3.0.0"
IBM-Process-Types=server, client
