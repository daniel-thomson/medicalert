Instance: MedicAlert-FirstResponderAPI
InstanceOf: CapabilityStatement
Usage: #definition
//* extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
//* extension[=].valueInteger = 2
//* extension[=].valueInteger.extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom"
//* extension[=].valueInteger.extension.valueCanonical = "http://hl7.org/fhir/uv/ips/ImplementationGuide/ig-uv-ips"
//* extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
//* extension[=].valueCode = #trial-use
//* extension[=].valueCode.extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom"
//* extension[=].valueCode.extension.valueCanonical = "http://hl7.org/fhir/uv/ips/ImplementationGuide/ig-uv-ips"
//* url = "http://hl7.org/fhir/uv/ips/CapabilityStatement/ips-server"
* version = "0.1.0"
* name = "MedicAlertIpsServerCapabilityStatement"
* title = "MedicAlert IPS Server Capability Statement"
* status = #draft
* experimental = false
* date = "2022-12-12T13:15:56.964-00:00"
* publisher = "MedicAlert"
* contact.telecom.system = #url
* contact.telecom.value = "http://www.medicalert.nz"
* description = "This describes the expected capabilities of the MedicAlert IPS Server which is responsible for providing responses to the queries submitted for patient summary documents. The list of FHIR profiles and operations supported by the server are defined."
// * jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#001
// * copyright = "Used by permission of HL7 International, all rights reserved Creative Commons License"
* kind = #instance
* fhirVersion = #4.0.1
//* format[0] = #application/fhir+xml
//* format[+] = #xml
* format[+] = #application/fhir+json
* format[+] = #json
* rest.mode = #server

// bundle
* rest.resource[0].type = #Bundle
* rest.resource[=].profile = "https://standards.medicalert.nz/ns/MaPatientSummaryBundle"
// composition
* rest.resource[+].type = #Composition
* rest.resource[=].profile = "https://standards.medicalert.nz/ns/MaPatientSummaryComposition"
// patient 
* rest.resource[+].type = #Patient
* rest.resource[=].profile = "https://standards.medicalert.nz/ns/MaPatient"
// $summary operation
* rest.resource[=].operation.name = "summary"
* rest.resource[=].operation.definition = "https://standards.medicalert.nz/ns/MedicAlertSummary"
// allergyIntolerance
* rest.resource[+].type = #AllergyIntolerance
* rest.resource[=].profile = "https://standards.medicalert.nz/ns/MaAllergyIntolerance"
// condition
* rest.resource[+].type = #Condition
* rest.resource[=].profile = "http://hl7.org/fhir/StructureDefinition/Condition"
// device
* rest.resource[+].type = #Device
* rest.resource[=].profile = "https://standards.medicalert.nz/ns/MaDevice"
// deviceUseStatement
* rest.resource[+].type = #DeviceUseStatement
* rest.resource[=].profile = "http://hl7.org/fhir/StructureDefinition/DeviceUseStatement"
//* rest.resource[+].type = #DiagnosticReport
//* rest.resource[=].profile = "http://hl7.org/fhir/StructureDefinition/DiagnosticReport"
//* rest.resource[+].type = #ImagingStudy
//* rest.resource[=].profile = "http://hl7.org/fhir/StructureDefinition/ImagingStudy"
//* rest.resource[+].type = #Immunization
//* rest.resource[=].profile = "http://hl7.org/fhir/StructureDefinition/Immunization"
//* rest.resource[+].type = #Media
//* rest.resource[=].profile = "http://hl7.org/fhir/StructureDefinition/Media"
//* rest.resource[+].type = #Medication
//* rest.resource[=].profile = "http://hl7.org/fhir/StructureDefinition/Medication"
//* rest.resource[+].type = #MedicationRequest
//* rest.resource[=].profile = "http://hl7.org/fhir/StructureDefinition/MedicationRequest"
// MedicationStatement
* rest.resource[+].type = #MedicationStatement
* rest.resource[=].profile = "https://standards.medicalert.nz/ns/MaMedicationStatement"
// Observation / obs lab
* rest.resource[+].type = #Observation
* rest.resource[=].profile = "http://hl7.org/fhir/StructureDefinition/Observation"
//* rest.resource[=].supportedProfile[0] = "http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-pregnancy-edd-uv-ips"
//* rest.resource[=].supportedProfile[+] = "http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-pregnancy-status-uv-ips"
//* rest.resource[=].supportedProfile[+] = "http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-alcoholuse-uv-ips"
//* rest.resource[=].supportedProfile[+] = "http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-tobaccouse-uv-ips"
//* rest.resource[=].supportedProfile[+] = "http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-results-uv-ips"
// observation results lab (initially blood group)
* rest.resource[=].supportedProfile[+] = "https://standards.medicalert.nz/ns/MaObservationResultsLaboratory"
//* rest.resource[=].supportedProfile[+] = "http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-results-pathology-uv-ips"
// organization
* rest.resource[+].type = #Organization
* rest.resource[=].profile = "https://standards.medicalert.nz/ns/MaOrganization"
// practitioner
* rest.resource[+].type = #Practitioner
* rest.resource[=].profile = "https://standards.medicalert.nz/ns/MaPractitioner"
// prac role
* rest.resource[+].type = #PractitionerRole
* rest.resource[=].profile = "https://standards.medicalert.nz/ns/MaPractitionerRole"
// location
* rest.resource[+].type = #Location
* rest.resource[=].profile = "https://standards.medicalert.nz/ns/MaLocation"
// procedure
* rest.resource[+].type = #Procedure
* rest.resource[=].profile = "https://standards.medicalert.nz/ns/MaProcedure"
//* rest.resource[+].type = #Specimen
//* rest.resource[=].profile = "http://hl7.org/fhir/StructureDefinition/Specimen"
// DocRef
* rest.resource[+].type = #DocumentReference
* rest.resource[=].profile = "https://standards.medicalert.nz/ns/MaDocumentReference"
//* rest.resource[=].operation.name = "docref"
//* rest.resource[=].operation.definition = "http://build.fhir.org/ig/HL7/fhir-ipa/OperationDefinition-docref"
// flag / warning
* rest.resource[+].type = #Flag
* rest.resource[=].profile = "https://standards.medicalert.nz/ns/MaDocumentReference"
// advanceDirective
* rest.resource[+].type = #Consent
* rest.resource[=].profile = "https://standards.medicalert.nz/ns/MaWarning"

// for if we return our revised operation
* rest.resource[+].type = #OperationDefinition
* rest.resource[=].profile = "http://hl7.org/fhir/StructureDefinition/OperationDefinition"