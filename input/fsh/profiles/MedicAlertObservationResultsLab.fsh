Profile: MedicAlertObservationResultsLab
Parent: http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-results-laboratory-uv-ips
Id: MedicAlert-observation-results-lab
Title: "MedicAlert Observation Results: Laboratory"
Description: """This profile is based on the IPS observation results profile for lab results. It will be used to return blood group information, in addition to other lab results. """
* ^version = "0.1.0"
* ^status = #active
* ^publisher = "MedicAlert"
* ^url = "https://standards.medicalert.nz/ns/MaObservationResultsLaboratory"

//* meta.tag from https://standards.medicalert.nz/ValueSet/RiskRating (required) 
//* meta.tag MS

//* extension contains http://hl7.org/fhir/StructureDefinition/flag-detail named flagDetail 0..1
//* extension contains https://standards.medicalert.nz/ns/note named note 0..1