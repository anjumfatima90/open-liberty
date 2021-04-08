symbolicName=io.openliberty.managedBeansCore-2.0
kind=beta
-bundles=com.ibm.ws.jaxrpc.stub, com.ibm.ws.managedobject, com.ibm.ws.ejbcontainer.jakarta, com.ibm.ws.javaee.dd.ejb
-include=~${workspace}/cnf/resources/bnd/feature.props
edition=core
-features=com.ibm.websphere.appserver.containerServices-1.0,com.ibm.websphere.appserver.optional.corba-1.5,com.ibm.websphere.appserver.classloading-1.0,com.ibm.websphere.appserver.injection-2.0,com.ibm.websphere.appserver.anno-2.0,com.ibm.websphere.appserver.jndi-1.0
IBM-API-Package=com.ibm.ejs.container; type="internal", jakarta.interceptor; type="spec"
WLP-Activation-Type=parallel
