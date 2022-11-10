Alias: $MemberStatusWarning = https://standards.medicalert.nz/ValueSet/MemberStatusWarning

Extension: MemberWarningStatus
Id: member-status-warning
Description: "ModifierExtension for warnings about member status. The status may alter the interpretation, or warn about the currency or accuracy of information in the patient summary"

* ^date = "2020-11-10"
* ^publisher = "MedicAlert"

* ^url = "https://standards.medicalert.nz/MemberStatusWarning"
* ^context.type = #element
* ^context.expression = "Composition"
* . ..1 ?!
* . ^isModifierReason = "Status or age of information may alter interpretation or reliability of patient summary"
* url = "https://standards.medicalert.nz/MemberStatusWarning" (exactly)
* value[x] 1..
* value[x] only CodeableConcept
* value[x].coding from $MemberStatusWarning (required)
