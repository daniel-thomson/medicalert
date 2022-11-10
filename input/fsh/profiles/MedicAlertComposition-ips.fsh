
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
* ^url = "https://standards.medicalert.nz/MAPatientSummaryComposition"

* modifierExtension contains https://standards.medicalert.nz/MemberStatusWarning named MemberWarningStatus 1..1

