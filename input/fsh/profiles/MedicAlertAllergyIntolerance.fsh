Profile: MedicAlertAllergyIntoleranceIps
Parent: http://hl7.org/fhir/uv/ips/StructureDefinition/AllergyIntolerance-uv-ips
Id: MedicAlert-AllergyIntolerance-ips
Title: "MedicAlert AllergyIntolerance (IPS)"
Description: """This profile represents the constraints applied to AllergyIntolerance resource by the MedicAlert AllergyIntolerance profile based on the International Patient Summary (IPS) FHIR Implementation Guide. A record of an allergy or intolerance is represented in the patient summary as an instance of an AllergyIntolerance resource constrained by this profile.

It documents the relevant allergies or intolerances (conditions) for a patient, describing the kind of reaction (e.g. rash, anaphylaxis,..); preferably the agents that cause it; and optionally the criticality and the certainty of the allergy."""
* ^version = "0.1.0"
* ^status = #active
* ^publisher = "MedicAlert"
* ^url = "https://standards.medicalert.nz/ns/MaAllergyIntolerance"

* meta.tag from https://standards.medicalert.nz/ValueSet/RiskRating (required) 
* meta.tag MS