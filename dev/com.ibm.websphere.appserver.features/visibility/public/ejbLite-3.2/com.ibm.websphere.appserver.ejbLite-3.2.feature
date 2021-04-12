#
#Mon Apr 12 14:46:11 CDT 2021
symbolicName=com.ibm.websphere.appserver.ejbLite-3.2
visibility=public
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-App-ForceRestart=install, uninstall
WLP-DisableAllFeatures-OnConflict=false
kind=ga
singleton=true
IBM-API-Package=com.ibm.websphere.ejbcontainer.mbean; type\="ibm-api", com.ibm.websphere.ejbcontainer; type\="internal"
WLP-Activation-Type=parallel
Subsystem-Category=JavaEE7Application
edition=core
-features=com.ibm.websphere.appserver.transaction-1.2,com.ibm.websphere.appserver.ejbLiteCore-1.0,com.ibm.websphere.appserver.contextService-1.0,com.ibm.websphere.appserver.javax.ejb-3.2,com.ibm.websphere.appserver.eeCompatible-7.0;ibm.tolerates\:\="8.0",com.ibm.websphere.appserver.javaeePlatform-7.0,com.ibm.websphere.appserver.javax.interceptor-1.2
Subsystem-Name=Enterprise JavaBeans Lite 3.2
-bundles=com.ibm.ws.ejbcontainer.v32, com.ibm.ws.ejbcontainer.timer, com.ibm.ws.ejbcontainer.async
-files=dev/api/ibm/javadoc/com.ibm.websphere.appserver.api.ejbcontainer_1.0-javadoc.zip
-jars=com.ibm.websphere.appserver.api.ejbcontainer; location\:\=dev/api/ibm/
IBM-ShortName=ejbLite-3.2
