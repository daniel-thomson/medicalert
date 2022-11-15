ValueSet: AccessReason
Id: access-reason-vs
Title: "MedicAlert Access Reason ValueSet"
Description: "Reason for accessing the API"
* ^url = "https://standards.medicalert.nz/ValueSet/AccessReason"

* codes from system https://standards.medicalert.nz/CodeSystem/AccessReason

CodeSystem: AccessReason
Id: access-reason-cs
Title: "MedicAlert Access Reason CodeSystem"
Description: "Reason for accessing the API"
* ^url = "https://standards.medicalert.nz/CodeSystem/AccessReason"
* ^caseSensitive = false

* #"Test" "For testing usage only" 
* #"EmergencyAccess" "Emergency Access"
* #"NonEmergencyAccess" "Non Emergency Access"
* #"Accident" "Accident"