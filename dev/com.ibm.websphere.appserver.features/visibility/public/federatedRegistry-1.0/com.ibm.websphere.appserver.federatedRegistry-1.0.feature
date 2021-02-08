#
#Mon Feb 08 16:22:51 CST 2021
symbolicName=com.ibm.websphere.appserver.federatedRegistry-1.0
visibility=public
-include=~${workspace}/cnf/resources/bnd/feature.props
WLP-DisableAllFeatures-OnConflict=false
kind=ga
edition=core
-features=com.ibm.websphere.appserver.wimcore-1.0,com.ibm.websphere.appserver.securityInfrastructure-1.0
-bundles=com.ibm.websphere.security, com.ibm.ws.security.registry, com.ibm.ws.security.wim.registry
Subsystem-Name=Federated User Registry 1.0
IBM-SPI-Package=com.ibm.wsspi.security.wim; type\="ibm-spi", com.ibm.wsspi.security.wim.exception; type\="ibm-spi", com.ibm.wsspi.security.wim.model; type\="ibm-spi"
-files=dev/spi/ibm/javadoc/com.ibm.websphere.appserver.spi.federatedRepository_1.2-javadoc.zip
-jars=com.ibm.websphere.appserver.spi.federatedRepository; location\:\=dev/spi/ibm/
IBM-ShortName=federatedRegistry-1.0
