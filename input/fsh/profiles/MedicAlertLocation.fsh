Profile: MedicAlertLocation
Parent: Location
Id: MedicAlert-Location
Title: "MedicAlert Location"
Description: """This profile represents the constraints applied to Location resource by the MedicAlert Location profile."""
* ^version = "0.1.0"
* ^status = #active
* ^publisher = "MedicAlert"
* ^url = "https://standards.medicalert.nz/ns/MaLocation"

* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"

* identifier ^slicing.rules = #open

* identifier contains 
    facId 1..1 MS     

* identifier[facId].system = "https://standards.digital.health.nz/ns/hpi-facility-id" (exactly)
//* identifier[facId].use = #official (exactly)
//* identifier[facId].use ^short  = "fixed to official"
* identifier[facId] ^short = "The Facility id for this location"
//* identifier[facId].type 0..0
//* identifier[facId].period 0..0
//* identifier[facId].assigner only Reference(HpiOrganization)
