#
#Fri Apr 09 10:53:36 CDT 2021
symbolicName=io.openliberty.restfulWSClient3.0-globalhandler2.0
visibility=private
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-Install-Policy=when-satisfied
kind=beta
WLP-Activation-Type=parallel
edition=core
-bundles=io.openliberty.restfulWS.internal.globalhandler
IBM-Provision-Capability=osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=io.openliberty.restfulWSClient-3.0))", osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=io.openliberty.globalhandler-2.0))"
