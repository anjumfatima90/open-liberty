symbolicName=com.ibm.websphere.appserver.ssoCommon-1.0
visibility=protected
-include=~${workspace}/cnf/resources/bnd/feature.props
WLP-DisableAllFeatures-OnConflict=false
kind=ga
IBM-API-Package=com.ibm.websphere.security.saml2; type="ibm-api"
edition=core
-bundles=com.ibm.websphere.appserver.spi.saml20; location:="dev/spi/ibm/,lib/", com.ibm.websphere.appserver.api.saml20; location:="dev/api/ibm/,lib/", com.ibm.ws.security.sso.common
IBM-SPI-Package=com.ibm.wsspi.security.saml2
-files=dev/api/ibm/javadoc/com.ibm.websphere.appserver.api.saml20_1.1-javadoc.zip, dev/spi/ibm/javadoc/com.ibm.websphere.appserver.spi.saml20_1.0-javadoc.zip
