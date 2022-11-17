Instance: MedicAlertSummary
InstanceOf: OperationDefinition
Usage: #definition
* version = "1.0.0"
* name = "MedicAlertPatientSummary"
* title = "MedicAlert Patient Summary"
* url = "https://standards.medicalert.nz/ns/MedicAlertSummary"
* status = #draft
* kind = #query
* date = "2022-11-08T13:15:56.964-00:00"
* publisher = "MedicAlert"

* description = "The MedicAlert first responder API is queried using a FHIR operation. This is the $summary operation invoked on the Patient resource. The $summary operation returns a set of resources, organized as a Bundle. 

The response Bundle is structured as a FHIR document that is based on the [IPS standard](https://hl7.org/fhir/uv/ips/). 

An identifier for the patient (MedicAlert ID or NHI number) must be provided along with a reason for the API access. 

### Querying the API

The $summary operation must be invoked as a POST with the parameters passed in the message body.

An example query for emergency access using an NHI number:
```
POST [base]/Patient/$summary
Content-Type: application/x-www-form-urlencoded

_identifier=https://standards.digital.health.nz/ns/nhi%7CZZZ0016&reason=EmergencyAccess
```
An example query for non emergency access using the MedicAlert id:
```
POST [base]/Patient/$summary
Content-Type: application/x-www-form-urlencoded

_identifier=https://standards.medicalert.nz/memberId/1001&reason=NonEmergencyAccess
```

(note that non-standard ASCII characters such as the '|' character must be URL encoded)"
* affectsState = false
* code = #summary
* resource = #Patient
* system = false
* type = true
* instance = false
* parameter[0].name = #identifer
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Either the MedicAlert Member ID or a valid NHI number must be provided. This should be provided as the identifier system URI followed by the id, seperated by a pipe character"
* parameter[=].type = #Identifier

//* parameter[+].name = #profile
//* parameter[=].use = #in
//* parameter[=].min = 0
//* parameter[=].max = "1"
//* parameter[=].documentation = "A specific profile for the patient summary may be specified. By default, servers MAY use the [Bundle profile](./StructureDefinition-Bundle-uv-ips.html)"
//* parameter[=].type = #uri

//* parameter[+].name = #graph
//* parameter[=].use = #in
//* parameter[=].min = 0
//* parameter[=].max = "1"
//* parameter[=].documentation = "Servers MAY choose to allow any graph definition to be specified, but MAY require that the client choose a graph definition from a specific list of known supported definitions. The server is not required to support a formal definition of the graph on the end point"
//* parameter[=].type = #uri

// add reason string
* parameter[+].name = #reason
* parameter[=].documentation = "The reason/context that the service is accessed for"
* parameter[=].type = #Coding
* parameter[=].binding.valueSet = "https://standards.medicalert.nz/ValueSet/AccessReason"
* parameter[=].binding.strength = #required
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"

// output
* parameter[+].name = #return
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "The Bundle returned is a patient summary conforming to the [MedicAlert Patient Summary bundle](https://standards.medicalert.nz/MedicAlertPatientSummaryBundle) (if not otherwise specified)"
* parameter[=].type = #Bundle