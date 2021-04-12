#
#Mon Apr 12 14:46:11 CDT 2021
symbolicName=com.ibm.websphere.appserver.opentracing-1.2
visibility=public
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-App-ForceRestart=install, uninstall
WLP-DisableAllFeatures-OnConflict=false
kind=ga
singleton=true
IBM-API-Package=io.opentracing;  type\="third-party",io.opentracing.tag;  type\="third-party",io.opentracing.propagation;  type\="third-party", com.ibm.ws.opentracing.tracer; type\="ibm-spi"
WLP-Activation-Type=parallel
edition=core
-features=com.ibm.websphere.appserver.mpConfig-1.3;ibm.tolerates\:\="1.4",com.ibm.websphere.appserver.jaxrs-2.0;ibm.tolerates\:\="2.1",com.ibm.websphere.appserver.cdi-1.2;ibm.tolerates\:\="2.0"
-bundles=com.ibm.ws.jaxrs.defaultexceptionmapper, com.ibm.ws.opentracing.1.2, com.ibm.ws.opentracing.1.2.cdi, com.ibm.ws.io.opentracing.opentracing-util.0.31.0, com.ibm.websphere.appserver.thirdparty.opentracing.0.31.0; location\:\="dev/api/third-party/,lib/"; mavenCoordinates\="io.opentracing\:opentracing-api\:0.31.0"
Subsystem-Name=Opentracing 1.2
-files=dev/spi/ibm/javadoc/com.ibm.websphere.appserver.spi.opentracing.1.2_1.0-javadoc.zip
-jars=com.ibm.websphere.appserver.spi.opentracing.1.2; location\:\=dev/spi/ibm/
IBM-ShortName=opentracing-1.2
