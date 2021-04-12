#
#Mon Apr 12 14:46:11 CDT 2021
symbolicName=com.ibm.websphere.appserver.webProfile-8.0
visibility=public
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-App-ForceRestart=install, uninstall
WLP-DisableAllFeatures-OnConflict=false
kind=ga
singleton=true
edition=core
-features=com.ibm.websphere.appserver.appSecurity-3.0,com.ibm.websphere.appserver.jsonp-1.1,com.ibm.websphere.appserver.beanValidation-2.0,com.ibm.websphere.appserver.el-3.0,com.ibm.websphere.appserver.cdi-2.0,com.ibm.websphere.appserver.jsonb-1.0,com.ibm.websphere.appserver.jaspic-1.1,com.ibm.websphere.appserver.jdbc-4.2;ibm.tolerates\:\="4.3",com.ibm.websphere.appserver.transaction-1.2,com.ibm.websphere.appserver.jpa-2.2,com.ibm.websphere.appserver.websocket-1.1,com.ibm.websphere.appserver.jsp-2.3,com.ibm.websphere.appserver.servlet-4.0,com.ibm.websphere.appserver.ejbLite-3.2,com.ibm.websphere.appserver.jaxrs-2.1,com.ibm.websphere.appserver.managedBeans-1.0,com.ibm.websphere.appserver.jndi-1.0,com.ibm.websphere.appserver.jsf-2.3
Subsystem-Name=Java EE Web Profile 8.0
Subsystem-Version=8.0.0
IBM-ShortName=webProfile-8.0
