#
#Fri Apr 09 10:53:36 CDT 2021
symbolicName=com.ibm.websphere.appserver.opentracing-1.1
visibility=public
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-App-ForceRestart=install, uninstall
WLP-DisableAllFeatures-OnConflict=false
kind=ga
singleton=true
IBM-API-Package=io.opentracing;  type\="third-party",io.opentracing.tag;  type\="third-party",io.opentracing.propagation;  type\="third-party", com.ibm.ws.opentracing.tracer; type\="ibm-spi"
WLP-Activation-Type=parallel
edition=core
-features=com.ibm.websphere.appserver.jaxrs-2.0;ibm.tolerates\:\="2.1",com.ibm.websphere.appserver.cdi-1.2;ibm.tolerates\:\="2.0"
-bundles=com.ibm.ws.jaxrs.defaultexceptionmapper, com.ibm.ws.opentracing.1.1, com.ibm.ws.opentracing.1.1.cdi, com.ibm.ws.io.opentracing.opentracing-util.0.31.0, com.ibm.websphere.appserver.thirdparty.opentracing.0.31.0; location\:\="dev/api/third-party/,lib/"; mavenCoordinates\="io.opentracing\:opentracing-api\:0.31.0"
Subsystem-Name=Opentracing 1.1
-files=dev/spi/ibm/javadoc/com.ibm.websphere.appserver.spi.opentracing.1.1_1.0-javadoc.zip
-jars=com.ibm.websphere.appserver.spi.opentracing.1.1; location\:\=dev/spi/ibm/
IBM-ShortName=opentracing-1.1
