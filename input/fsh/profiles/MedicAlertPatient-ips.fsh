Profile: MedicAlertPatientIps
Parent: http://hl7.org/fhir/uv/ips/StructureDefinition/Patient-uv-ips
Id: MedicAlert-patient-ips
Title: "MedicAlert Patient (IPS)"
Description: """This profile represents the constraints applied to the Patient resource by the MedicAlert Patient Summary based on the International Patient Summary (IPS) FHIR Implementation Guide and describes the minimum expectations for the Patient resource when used in the IPS composition or in one of the referred resources.."""
* ^version = "0.1.0"
* ^status = #active
* ^publisher = "MedicAlert"

* contained 0..0
* modifierExtension 0..0
* photo 0..0
* multipleBirth[x] 0..0
* generalPractitioner 0..0
* link 0..0
