Profile: MedicAlertMedicationStatement
Parent: http://hl7.org/fhir/uv/ips/StructureDefinition/MedicationStatement-uv-ips
Id: MedicAlert-MedicationStatement-ips
Title: "MedicAlert MedicationStatement (IPS)"
Description: """This profile represents the constraints applied to the MedicationStatement resource by the MedicAlert MedicationStatement profile based on the International Patient Summary (IPS) FHIR Implementation Guide. A record of medication being taken is represented in the patient summary as an instance of an MedicationStatement resource constrained by this profile.
"""
* ^version = "0.1.0"
* ^status = #active
* ^publisher = "MedicAlert"
* ^url = "https://standards.medicalert.nz/ns/MaMedicationStatement"

* meta.tag from https://standards.medicalert.nz/ValueSet/RiskRating (required) 
* meta.tag MS

