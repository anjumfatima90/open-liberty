#
#Fri Apr 09 10:53:36 CDT 2021
symbolicName=com.ibm.websphere.appserver.opentracing-2.0
visibility=public
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-App-ForceRestart=install, uninstall
kind=ga
singleton=true
IBM-API-Package=io.opentracing;  type\="third-party",io.opentracing.tag;  type\="third-party",io.opentracing.propagation;  type\="third-party", io.openliberty.opentracing.spi.tracer; type\="ibm-spi"
WLP-Activation-Type=parallel
edition=core
-features=com.ibm.websphere.appserver.mpConfig-2.0,com.ibm.websphere.appserver.jaxrs-2.1,com.ibm.websphere.appserver.cdi-2.0
-bundles=com.ibm.ws.jaxrs.defaultexceptionmapper, io.openliberty.opentracing.2.0.internal, io.openliberty.opentracing.2.0.internal.cdi, io.openliberty.io.opentracing.opentracing-util.0.33.0, io.openliberty.opentracing.2.0.thirdparty; location\:\="dev/api/third-party/,lib/"; mavenCoordinates\="io.opentracing\:opentracing-api\:0.33.0", com.ibm.ws.microprofile.opentracing.jaeger, com.ibm.ws.microprofile.opentracing.jaeger.adapter, com.ibm.ws.microprofile.opentracing.jaeger.adapter.impl
Subsystem-Name=Opentracing 2.0
-files=dev/spi/ibm/javadoc/io.openliberty.opentracing.2.0.spi_1.0-javadoc.zip
-jars=io.openliberty.opentracing.2.0.spi; location\:\=dev/spi/ibm/
IBM-ShortName=opentracing-2.0
