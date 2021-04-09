#
#Fri Apr 09 10:53:36 CDT 2021
symbolicName=com.ibm.websphere.appserver.managedBeans-1.0
visibility=public
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-App-ForceRestart=install, uninstall
WLP-DisableAllFeatures-OnConflict=false
kind=ga
WLP-Activation-Type=parallel
edition=core
-features=com.ibm.websphere.appserver.javax.ejb-3.1;apiJar\=false;ibm.tolerates\:\="3.2",com.ibm.websphere.appserver.javax.interceptor-1.1;ibm.tolerates\:\="1.2",com.ibm.websphere.appserver.transaction-1.1;ibm.tolerates\:\="1.2",com.ibm.websphere.appserver.managedBeansCore-1.0
-bundles=com.ibm.ws.managedbeans
Subsystem-Name=Java EE Managed Bean 1.0
-files=dev/api/ibm/schema/ibm-managed-bean-bnd_1_0.xsd, dev/api/ibm/schema/ibm-managed-bean-bnd_1_1.xsd
IBM-ShortName=managedBeans-1.0
