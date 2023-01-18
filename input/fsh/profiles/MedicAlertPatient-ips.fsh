Profile: MedicAlertPatientIps
Parent: http://hl7.org/fhir/uv/ips/StructureDefinition/Patient-uv-ips
Id: MedicAlert-patient-ips
Title: "MedicAlert Patient (IPS)"
Description: """This profile represents the constraints applied to the Patient resource by the MedicAlert Patient Summary based on the International Patient Summary (IPS) FHIR Implementation Guide and describes the minimum expectations for the Patient resource when used in the IPS composition or in one of the referred resources.."""
* ^version = "0.1.0"
* ^status = #active
* ^publisher = "MedicAlert"

* ^url = "https://standards.medicalert.nz/ns/MaPatient"

//* contained 0..0
* modifierExtension 0..0
* photo 0..0
* multipleBirth[x] 0..0
// * generalPractitioner 0..0
* link 0..0

// slices for MA + NHI identifiers

* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.discriminator[1].type = #value
* identifier ^slicing.discriminator[1].path = "system"

* identifier ^slicing.rules = #open
* identifier ^slicing.description = "MedicAlert member id and NHI number"

* identifier contains NHI 0..1 MS and MedicAlertID 0..1 MS

* identifier[MedicAlertID].system = "https://standards.medicalert.nz/ns/memberid" (exactly)
* identifier[MedicAlertID].type 0..0
* identifier[MedicAlertID].period 0..0
* identifier[MedicAlertID] ^short = "MedicAlert member id"
* identifier[MedicAlertID] ^definition = "The MedicAlert issued identifier for its members"

* identifier[NHI].system = "https://standards.digital.health.nz/ns/nhi-id" (exactly)
* identifier[NHI].type 0..0
* identifier[NHI].period 0..0
* identifier[NHI] ^short = "NHI number"
* identifier[NHI] ^definition = "The National Health Index (NHI) number for the patient"

