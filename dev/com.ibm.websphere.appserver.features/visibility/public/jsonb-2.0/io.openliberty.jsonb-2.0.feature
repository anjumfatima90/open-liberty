symbolicName=io.openliberty.jsonb-2.0
visibility=public
-include=~${workspace}/cnf/resources/bnd/feature.props
kind=beta
IBM-API-Package=jakarta.json.bind; type="spec", jakarta.json.bind.adapter; type="spec", jakarta.json.bind.annotation; type="spec", jakarta.json.bind.config; type="spec", jakarta.json.bind.serializer; type="spec", jakarta.json.bind.spi; type="spec"
WLP-Activation-Type=parallel
edition=core
-features=com.ibm.websphere.appserver.eeCompatible-9.0,io.openliberty.jsonbInternal-2.0
-bundles=com.ibm.ws.jsonb.service
Subsystem-Name=Jakarta JSON Binding 2.0
IBM-ShortName=jsonb-2.0
