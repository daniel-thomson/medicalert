
The first responder API uses the $summary operation, to return a FHIR document containing a patient summary that is based on the FHIR IPS Standard.

The FHIR document consists of a bundle (of type = document) of resources. The Composition resource returned in the bundle acts as a document header (like a table of contents) and contains information about the patient summary document, and references to the individual resources making up the summary.

### Proof of Concept data mapping

The API will return all the clinical data MedicAlert hold, mapped to the following two FHIR resources:

* AllergyIntolerance
* Condition

And information about the patient and the overall summary will be in the following resources: 

* Patient
* Composiion

This will mean while the FHIR API produced will return conformant FHIR format resources, the data will not be strictly conformant to the FHIR definitions of each resource, and the API should not be consumed without understanding the implications of this Mapping. Information that should be returned in other IPS FHIR resources such as ‘Medication’, ‘Device/DeviceUsage’, ‘DiagnosticReport’, ‘Observation’, will all be mapped too the AllergyIntolerance resource and Condition resource and be returned in these resources in the API. 

Advance directives info will also be included in the Condition/AllergyIntolerance info if this functionality has already been added by MedicALert

### Bundle and resource relationships

The diagram below shows the current resources returned in the bundle (the initial stage is a proof of concept, so only some resources have been populated at this point):

<img src="MedicAlert-FHIR-IPS.svg"/>