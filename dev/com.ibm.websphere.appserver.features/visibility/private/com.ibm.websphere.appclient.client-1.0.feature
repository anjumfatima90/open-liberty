#
#Fri Apr 09 10:53:36 CDT 2021
symbolicName=com.ibm.websphere.appclient.client-1.0
visibility=private
-include=~${workspace}/cnf/resources/bnd/feature.props
WLP-DisableAllFeatures-OnConflict=false
kind=ga
WLP-Activation-Type=parallel
edition=base
-files=bin/client; ibm.executable\:\=true; ibm.file.encoding\:\=ebcdic, bin/client.bat, bin/tools/ws-client.jar
IBM-Process-Types=client, server
-jars=com.ibm.ws.appclient.boot, com.ibm.ws.kernel.boot
