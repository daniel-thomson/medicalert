
Profile: MedicAlertCompositionIps
Parent: http://hl7.org/fhir/uv/ips/StructureDefinition/Composition-uv-ips
Id: MedicAlert-composition-ips
Title: "MedicAlert Composition (IPS)"
Description: """Clinical document used to represent the MedicAlert Patient Summary based on the International Patient Summary (IPS) data set. 
An International Patient Summary (IPS) document is an electronic health record extract containing essential healthcare information about a subject of care. 
The IPS dataset is minimal and non-exhaustive; specialty-agnostic and condition-independent; but still clinically relevant. As specified in EN 17269 and ISO/DIS 27269, it is designed for supporting the use case scenario for ‘unplanned, cross border care’, but it is not limited to it. It is intended to be international, i.e., to provide generic solutions for global application beyond a particular region or country.

This profile is based on the ClinicalDocument profile."""
* ^version = "0.1.0"
* ^status = #active
* ^publisher = "MedicAlert"
* ^url = "https://standards.medicalert.nz/ns/MAPatientSummaryComposition"

* modifierExtension contains https://standards.medicalert.nz/ns/MemberStatusWarning named MemberWarningStatus 1..1

* section contains 
    sectionWarnings 0..1 MS and 
    sectionDocuments 0..1

* section[sectionWarnings] ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionWarnings] ^extension[=].valueString = "Section"
* section[sectionWarnings] ^short = "Flags and Warnings Section"
* section[sectionWarnings] ^definition = "Warnings that MedicAlert holds for a patient that do not fit into other resources in the patient summary or to highlight important resources within the summary."
* section[sectionWarnings].title 1.. MS
* section[sectionWarnings].code = http://loinc.org#74018-3
* section[sectionWarnings].entry 1.. MS
* section[sectionWarnings].entry only Reference(Flag)
* section[sectionWarnings].entry ^slicing.discriminator[0].type = #profile
* section[sectionWarnings].entry ^slicing.discriminator[=].path = "resolve()"
* section[sectionWarnings].entry ^slicing.rules = #open
* section[sectionWarnings].entry ^short = "Flags and Warnings for the patient"
* section[sectionWarnings].entry ^definition = "Warnings that MedicAlert holds for a patient that do not fit into other resources in the patient summary or to highlight important resources within the summary"
* section[sectionWarnings].entry contains warning 1..* MS
* section[sectionWarnings].entry[warning] only Reference(https://standards.medicalert.nz/ns/MaWarning)

* section[sectionDocuments] ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionDocuments] ^extension[=].valueString = "Section"
* section[sectionDocuments] ^short = "Documents Section"
* section[sectionDocuments] ^definition = "used to link resources (such as Advance Directives and Emergency medical action plans) to a copy of the original document (in PDF format)."
* section[sectionDocuments].title 1.. MS
* section[sectionDocuments].code = http://loinc.org#42348-3
* section[sectionDocuments].entry 1.. MS
* section[sectionDocuments].entry only Reference(DocumentReference)
* section[sectionDocuments].entry ^slicing.discriminator[0].type = #profile
* section[sectionDocuments].entry ^slicing.discriminator[=].path = "resolve()"
* section[sectionDocuments].entry ^slicing.rules = #open
* section[sectionDocuments].entry ^short = "DocumentsReference resource with link to original documents"
* section[sectionDocuments].entry ^definition = "used to link resources (such as Advance Directives and Emergency medical action plans) to a copy of the original document (in PDF format)"
* section[sectionDocuments].entry contains documentReference 1..* MS
* section[sectionDocuments].entry[documentReference] only Reference(https://standards.medicalert.nz/ns/MaDocumentReference)



