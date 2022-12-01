Profile: MedicAlertPractitioner
Parent: http://hl7.org/fhir/uv/ips/StructureDefinition/Practitioner-uv-ips
Id: MedicAlert-Practitioner
Title: "MedicAlert Practitioner (IPS)"
Description: """This profile represents the constraints applied to Practitioner resource by the MedicAlert Practitioner profile, based on the International Patient Summary (IPS) FHIR Implementation Guide."""
* ^version = "0.1.0"
* ^status = #active
* ^publisher = "MedicAlert"
* ^url = "https://standards.medicalert.nz/ns/MaPractitioner"

* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"

* identifier ^slicing.description = "NZ HPI Identifiers"
* identifier ^slicing.rules = #open

* identifier contains 
    HPI 0..1 MS

* identifier[HPI].system = "https://standards.digital.health.nz/ns/hpi-person-id" (exactly)
//* identifier[HPI].use = #official (exactly)
//* identifier[HPI].use ^short = "fixed to official"
//* identifier[HPI].type 0..0
//* identifier[HPI].period 0..0
* identifier[HPI] ^short = "The currently active CPN (Common Person Name)"
* identifier[HPI] ^definition = "The HPI Person Identifier or CPN of the practitioner"

//* meta.tag from https://standards.medicalert.nz/ValueSet/RiskRating (required) 
//* meta.tag MS
