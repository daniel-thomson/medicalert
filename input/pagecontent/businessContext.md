### Business context

The MedicAlert first responder API provides a summary document based on the IPS standard, containing all the warining information that MedicAlert holds for a patient. 

### IPS Document structure

To first responder API uses the $summary operation, to return a FHIR document containing the patient summary that is based on the [FHIR IPS Standard](http://hl7.org/fhir/uv/ips/).

The FHIR document consists of a bundle (of type = document) of resources. The Composition resource returned in the bundle acts as a kind of header section (like a table of contents) and contains information about the patient summary document, and references to the individual resources making up the patient summary. 

The diagram below shows the current resources returned in the bundle (the initial stage is a proof of concept, so only some resources have been populated at this point)
![IPS Bundle](MedicAlert-FHIR-IPS.svg "IPS Bundle")