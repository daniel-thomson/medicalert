Profile: MedicAlertPractitionerRole
Parent: http://hl7.org/fhir/uv/ips/StructureDefinition/PractitionerRole-uv-ips
Id: MedicAlert-PractitionerRole
Title: "MedicAlert PractitionerRole (IPS)"
Description: """This profile represents the constraints applied to PractitionerRole resource by the MedicAlert PractitionerRole profile, based on the International Patient Summary (IPS) FHIR Implementation Guide."""
* ^version = "0.1.0"
* ^status = #active
* ^publisher = "MedicAlert"
* ^url = "https://standards.medicalert.nz/ns/MaPractitionerRole"


* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"

* identifier ^slicing.description = "HPI PracRole identifier"
* identifier ^slicing.rules = #open

* identifier contains 
    RI 0..1 MS 

* identifier[RI].system = "https://standards.digital.health.nz/ns/hpi-practitionerrole-id" (exactly)