#
#Mon Feb 08 16:22:51 CST 2021
symbolicName=io.openliberty.distributedMapInternal-2.0
visibility=private
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-App-ForceRestart=install, uninstall
kind=beta
singleton=true
WLP-Activation-Type=parallel
edition=core
-features=io.openliberty.servlet.api-5.0,com.ibm.websphere.appserver.eeCompatible-9.0
-bundles=io.openliberty.dynacache.internal
Subsystem-Version=2.0.0
