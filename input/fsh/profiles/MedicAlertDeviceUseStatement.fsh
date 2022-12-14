Profile: MedicAlertDeviceUseStatementIps
Parent: http://hl7.org/fhir/uv/ips/StructureDefinition/DeviceUseStatement-uv-ips
Id: MedicAlert-DeviceUseStatement-ips
Title: "MedicAlert DeviceUseStatement (IPS)"
Description: """This profile represents the constraints applied to the DeviceUseStatement resource by the MedicAlert Patient Summary based on the International Patient Summary (IPS) FHIR Implementation Guide. The usage of a Device by a patient is represented in the MedicAlert patient summary as an instance of the DeviceUseStatement resource constrained by this profile."""
* ^version = "0.1.0"
* ^status = #active
* ^publisher = "MedicAlert"
* ^url = "https://standards.medicalert.nz/ns/DeviceUseStatement"

* meta.tag from https://standards.medicalert.nz/ValueSet/RiskRating (required) 
* meta.tag MS