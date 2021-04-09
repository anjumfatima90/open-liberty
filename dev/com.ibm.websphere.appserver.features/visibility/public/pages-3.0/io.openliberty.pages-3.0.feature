#
#Fri Apr 09 10:53:36 CDT 2021
symbolicName=io.openliberty.pages-3.0
visibility=public
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-App-ForceRestart=install, uninstall
kind=beta
singleton=true
WLP-AlsoKnownAs=jsp-3.0
IBM-API-Package=jakarta.servlet.jsp;  type\="spec", jakarta.servlet.jsp.el;  type\="spec", jakarta.servlet.jsp.tagext;  type\="spec", jakarta.servlet.jsp.jstl.sql;  type\="spec", jakarta.servlet.jsp.jstl.tlv;  type\="spec", jakarta.servlet.jsp.jstl.core;  type\="spec", jakarta.servlet.jsp.jstl.fmt;  type\="spec", jakarta.el;  type\="spec", org.apache.taglibs.standard;  type\="internal", org.apache.taglibs.standard.tag.common.core;  type\="internal", org.apache.taglibs.standard.tag.common.fmt;  type\="internal", org.apache.taglibs.standard.tag.common.sql;  type\="internal", org.apache.taglibs.standard.tag.common.xml;  type\="internal", org.apache.taglibs.standard.tag.el.core;  type\="internal", org.apache.taglibs.standard.tag.el.fmt;  type\="internal", org.apache.taglibs.standard.tag.el.sql;  type\="internal", org.apache.taglibs.standard.tag.el.xml;  type\="internal", org.apache.taglibs.standard.functions;  type\="internal", org.apache.taglibs.standard.tag.rt.core;  type\="internal", org.apache.taglibs.standard.tag.rt.fmt;  type\="internal", org.apache.taglibs.standard.tag.rt.sql;  type\="internal", org.apache.taglibs.standard.tag.rt.xml;  type\="internal", org.apache.el;  type\="internal", org.apache.el.lang;  type\="internal", org.apache.jasper.el;  type\="internal"
WLP-Activation-Type=parallel
edition=core
-features=com.ibm.websphere.appserver.servlet-5.0,com.ibm.websphere.appserver.eeCompatible-9.0,io.openliberty.jakarta.pages-3.0,io.openliberty.expressionLanguage-4.0
-bundles=com.ibm.ws.org.eclipse.jdt.core.3.10.2.v20160712-0000, io.openliberty.jakarta.jstl.2.0; location\:\="dev/api/spec/,lib/"; mavenCoordinates\="jakarta.servlet.jsp.jstl\:jakarta.servlet.jsp.jstl-api\:2.0.0", com.ibm.ws.jsp.2.3.jakarta, com.ibm.ws.jsp.jakarta, io.openliberty.jstl.facade; start-phase\:\=CONTAINER_EARLY, io.openliberty.org.apache.taglibs.standard
Subsystem-Name=Jakarta Server Pages 3.0
IBM-SPI-Package=com.ibm.wsspi.jsp.taglib.config
-files=dev/spi/ibm/javadoc/com.ibm.websphere.appserver.spi.jsp_1.0-javadoc.zip
-jars=com.ibm.websphere.appserver.spi.jsp; location\:\=dev/spi/ibm/, com.ibm.websphere.javaee.jsp.tld.2.2.jakarta; location\:\=dev/api/spec/
IBM-ShortName=pages-3.0
