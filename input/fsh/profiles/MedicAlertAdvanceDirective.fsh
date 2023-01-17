Profile: MedicAlertAdvanceDirective
Parent: Consent
Id: MedicAlert-advance-directive
Title: "MedicAlert AdvanceDirective"
Description: """This profile represents advance directives that MedicAlert holds for a patient based on the consent resource. The consent resource will reference a DocumentReference that contains a link to the original PDF of the AdvanceDirective document """
* ^version = "0.1.0"
* ^status = #active
* ^publisher = "MedicAlert"
* ^url = "https://standards.medicalert.nz/ns/MaAdvanceDirective"

* meta.tag from https://standards.medicalert.nz/ValueSet/RiskRating (required) 
* meta.tag MS

