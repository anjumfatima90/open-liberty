#
#Mon Feb 08 16:22:51 CST 2021
symbolicName=com.ibm.websphere.appserver.auditCollector-1.0
visibility=protected
-include=~${workspace}/cnf/resources/bnd/feature.props
WLP-DisableAllFeatures-OnConflict=false
kind=ga
IBM-API-Package=com.ibm.websphere.security.audit; type\="ibm-api"
edition=core
-features=com.ibm.websphere.appserver.restHandler-1.0,com.ibm.websphere.appserver.wimcore-1.0,com.ibm.websphere.appserver.servlet-3.0;ibm.tolerates\:\="3.1,4.0,5.0"
IBM-SPI-Package=com.ibm.wsspi.security.audit; type\="ibm-spi"
IBM-Process-Types=server
