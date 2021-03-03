#
#Wed Mar 03 12:43:54 CST 2021
IBM-Install-Policy=when-satisfied
visibility=private
symbolicName=io.openliberty.restfulWSClient3.0-globalhandler2.0
kind=beta
-bundles=io.openliberty.restfulWS.internal.globalhandler
-include=~${workspace}/cnf/resources/bnd/feature.props
edition=core
IBM-Provision-Capability=osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=io.openliberty.restfulWSClient-3.0))", osgi.identity; filter\:\="(&(type\=osgi.subsystem.feature)(osgi.identity\=io.openliberty.globalhandler-2.0))"
