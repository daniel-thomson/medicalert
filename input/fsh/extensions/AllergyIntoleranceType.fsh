Alias: $AllergyIntoleranceTypeVS = https://standards.medicalert.nz/ValueSet/MaAllergyIntoleranceWarningType

Extension: MaAllergyIntoleranceWarningType
Id: ma-allergy-intolerance-warning-type
Description: "Extension on AllergyIntolerance for extra codes to indicate the MedicAlert assigned type of warning"

* ^date = "2022-11-10"
* ^publisher = "MedicAlert"

* ^url = "https://standards.medicalert.nz/ns/MaAllergyIntoleranceWarningType"
* ^context.type = #element
* ^context.expression = "AllergyIntolerance"
* . ..1 ?!
* . ^isModifierReason = "Information that does not fit the strict defintions of the AllergyIntoleranceType may be included in this resource, therefore this element is needed to communicate they type of information contained"
* url = "https://standards.medicalert.nz/ns/MaAllergyIntoleranceWarningType" (exactly)
* value[x] 1..
* value[x] only Coding
* value[x].code from $AllergyIntoleranceTypeVS (required)
