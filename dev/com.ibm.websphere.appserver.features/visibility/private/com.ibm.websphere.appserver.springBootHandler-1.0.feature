#
#Fri Apr 09 10:53:36 CDT 2021
symbolicName=com.ibm.websphere.appserver.springBootHandler-1.0
visibility=private
-include=~${workspace}/cnf/resources/bnd/feature.props
WLP-DisableAllFeatures-OnConflict=false
kind=ga
IBM-API-Package=com.ibm.ws.app.manager.springboot.container.config; type\="internal", com.ibm.ws.app.manager.springboot.container; type\="internal"
edition=core
-features=com.ibm.websphere.appserver.appmanager-1.0,com.ibm.websphere.appserver.javaeePlatform-7.0,com.ibm.websphere.appserver.artifact-1.0
-bundles=com.ibm.ws.app.manager.springboot, com.ibm.ws.springboot.support.shutdown, com.ibm.ws.springboot.utility
-files=bin/tools/ws-springbootutil.jar, bin/springBootUtility; ibm.executable\:\=true; ibm.file.encoding\:\=ebcdic, bin/springBootUtility.bat
