Instance: MedicAlertSummary
InstanceOf: OperationDefinition
Usage: #definition
* version = "1.1.0"
* name = "MedicAlertPatientSummary"
* title = "MedicAlert Patient Summary"
* status = #draft
* kind = #operation
* date = "2022-11-08T13:15:56.964-00:00"
* publisher = "MedicAlert"

* description = "This operation is used to return a patient summary from the MedicAlert using the IPS profile. An identifier for the patient (MedicAlert ID or NHI number) must be provided along with a reason for the API access. E.g.:

GET [base]/Patient$summary?_identifier=https://standards.digital.health.nz/ns/nhi%7CZZZ0016&reason=emergency (note the 'pipe' character must be URL encoded)"

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
* parameter[=].documentation = "Either the MedicAlert Member ID or a valid NHI number must be provided"
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
* parameter[=].type = #string
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"

// output
* parameter[+].name = #return
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "The Bundle returned is a document conforming to the specified input profile parameter or the International Patient Summary [Bundle profile](./StructureDefinition-Bundle-uv-ips.html) (if not otherwise specified)"
* parameter[=].type = #Bundle