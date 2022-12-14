Profile: MedicAlertProcedureIps
Parent: http://hl7.org/fhir/uv/ips/StructureDefinition/Procedure-uv-ips
Id: MedicAlert-procedure-ips
Title: "MedicAlert Procedure (IPS)"
Description: """This profile represents the constraints applied to the Procedure resource by the MedicAlert Patient Summary based on the International Patient Summary (IPS) FHIR Implementation Guide. The Procedure resource specifies an entry of the History of Procedure section of the MedicAlert Composition."""
* ^version = "0.1.0"
* ^status = #active
* ^publisher = "MedicAlert"
* ^url = "https://standards.medicalert.nz/ns/MaProcedure"

* meta.tag from https://standards.medicalert.nz/ValueSet/RiskRating (required) 
* meta.tag MS