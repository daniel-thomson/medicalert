Profile: MedicAlertOrganization
Parent: http://hl7.org/fhir/uv/ips/StructureDefinition/Organization-uv-ips
Id: MedicAlert-Organization
Title: "MedicAlert Organization (IPS)"
Description: """This profile represents the constraints applied to Organization resource by the MedicAlert Organization profile, based on the International Patient Summary (IPS) FHIR Implementation Guide."""
* ^version = "0.1.0"
* ^status = #active
* ^publisher = "MedicAlert"
* ^url = "https://standards.medicalert.nz/ns/MaOrganization"

* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open

* identifier contains 
    orgId 1..1 MS

* identifier[orgId].system = "https://standards.digital.health.nz/ns/hpi-organisation-id" (exactly)
//* identifier[orgId].use = #official (exactly)
//* identifier[orgId].use ^short = "fixed to official"
* identifier[orgId] ^short = "The HPI organization Id for this Organization"
//* identifier[orgId].type 0..0
//* identifier[orgId].period 0..0
//* identifier[orgId].assigner only Reference(HpiOrganization)