Profile: MedicAlertDocumentReference
Parent: DocumentReference
Id: MedicAlert-document-reference
Title: "MedicAlert DocumentReference"
Description: """This is a profile on the DocumentReference resource. It is used to link resources (such as Advance Directives and Emergency medical action plans) to a copy of the original document (in PDF format), that a resource is based on. """
* ^version = "0.1.0"
* ^status = #active
* ^publisher = "MedicAlert"
* ^url = "https://standards.medicalert.nz/ns/MaDocumentReference"

//* meta.tag from https://standards.medicalert.nz/ValueSet/RiskRating (required) 
//* meta.tag MS

* type from https://standards.medicalert.nz/ValueSet/DocumentType