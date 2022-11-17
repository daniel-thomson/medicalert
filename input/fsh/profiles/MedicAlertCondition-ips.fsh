Profile: MedicAlertConditionIps
Parent: http://hl7.org/fhir/uv/ips/StructureDefinition/Condition-uv-ips
Id: MedicAlert-condition-ips
Title: "MedicAlert Condition (IPS)"
Description: """This profile represents the constraints applied to the Condition resource by the MedicAlert Patient Summary based on the International Patient Summary (IPS) FHIR Implementation Guide. A record of a problem is represented in the patient summary as an instance of the Condition resource constrained by this profile."""
* ^version = "0.1.0"
* ^status = #active
* ^publisher = "MedicAlert"
* ^url = "https://standards.medicalert.nz/ns/MaCondition"

* meta.tag from https://standards.medicalert.nz/ValueSet/RiskRating (required) 
* meta.tag MS