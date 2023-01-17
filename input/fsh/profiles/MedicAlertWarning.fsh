Profile: MedicAlertWarning
Parent: Flag
Id: MedicAlert-flag-warning
Title: "MedicAlert Warning"
Description: """This profile represents warnings that MedicAlert holds for a patient that do not fit into other resources defined in the IPS or to highlight important warnings within the patient summary. Where used to highlight an important warning, the flag-detail extension will reference the resource that contains the full information about the warning.  It is based on the Flag resource """
* ^version = "0.1.0"
* ^status = #active
* ^publisher = "MedicAlert"
* ^url = "https://standards.medicalert.nz/ns/MaWarning"

* meta.tag from https://standards.medicalert.nz/ValueSet/RiskRating (required) 
* meta.tag MS

* extension contains http://hl7.org/fhir/StructureDefinition/flag-detail named flagDetail 0..1
* extension contains https://standards.medicalert.nz/ns/note named note 0..1