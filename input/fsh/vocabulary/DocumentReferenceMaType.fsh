ValueSet: DocumentType
Id: document-type-vs
Title: "MedicAlert document type ValueSet"
Description: "Type of document referenced"
* ^url = "https://standards.medicalert.nz/ValueSet/DocumentType"

* codes from system https://standards.medicalert.nz/CodeSystem/DocumentType

CodeSystem: DocumentType
Id: document-type-cs
Title: "MedicAlert document type CodeSystem"
Description: "Type of document referenced"
* ^url = "https://standards.medicalert.nz/CodeSystem/DocumentType"
* ^caseSensitive = false

* #"POA" "Enduring power of Attorney" 
* #"Adv" "Advanced Directive"
* #"Wrn" "Medical warning notice"
* #"Act" "Emergency medical action plan"
* #"Drg" "Drug Warning"