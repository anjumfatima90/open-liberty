-include= ~../cnf/resources/bnd/feature.props
symbolicName=com.ibm.websphere.appserver.springBoot-2.0
visibility=public
IBM-ShortName: springBoot-2.0
IBM-Process-Types: client, \
 server
Subsystem-Name: Spring Boot Support version 2.0
-features=com.ibm.websphere.appserver.springBootHandler-1.0, \
 com.ibm.websphere.appserver.servlet-3.1; ibm.tolerates:="4.0"
-bundles=com.ibm.ws.springboot.support.version20
kind=noship
edition=core
