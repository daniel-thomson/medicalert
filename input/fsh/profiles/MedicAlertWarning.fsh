Profile: MedicAlertWarning
Parent: Flag
Id: MedicAlert-flag-warning
Title: "MedicAlert Warning"
Description: """This profile represents warnings that MedicAlert holds for a patient that do not fit into other resources defined in the IPS. It is based on the Flag resource """
* ^version = "0.1.0"
* ^status = #active
* ^publisher = "MedicAlert"
* ^url = "https://standards.medicalert.nz/ns/MaWarning"

* meta.tag from https://standards.medicalert.nz/ValueSet/RiskRating (required) 
* meta.tag MS
