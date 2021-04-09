#
#Fri Apr 09 10:53:36 CDT 2021
symbolicName=io.openliberty.restfulWS3.0-jsonb2.0
visibility=private
-include=~${workspace}/cnf/resources/bnd/feature.props
IBM-App-ForceRestart=install, uninstall
IBM-Install-Policy=when-satisfied
kind=beta
WLP-Activation-Type=parallel
edition=core
-bundles=io.openliberty.restfulWS30.jsonb20provider.jakarta
IBM-Provision-Capability=osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=io.openliberty.restfulWSClient-3.0))", osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=io.openliberty.jsonb-2.0))"
Subsystem-Version=1.1.0
