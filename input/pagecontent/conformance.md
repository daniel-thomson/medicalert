
## Criticality Tags

Each clinical resource will be have a coded tag on the meta.tag element. This code indicates the seriousness and priority of each returned item in the patient summary. 

The possible codes in the RiskRating tags ValueSet are: 

| Code       | Display                      |
|------------|------------------------------|
|   0.1-1.99 | Life Threatening             |
|   2-2.99   | Permanent Harm               |
|   3-3.99   | Low Harm                     |
|   4        | Information / don't disclose |

An example of a tag that might be returned is shown below:

```
"meta": {
    "tag": [
        {
            "system": "https://standards.medicalert.nz/CodeSystem/RiskRating",
            "code": "1.00",
            "display": "0.1-1.99 : Life Threatening"
        }
    ]
}
```

Consumers of the API must process these appropriately to ensure critical information is not omitted from being displayed to users and processed appropriately by the consuming application.


## ModifierExtensions

ModifierExtensions are an important conformance aspect, as their existance on a record means it is not safe for an application or user consuming the content of the resource to ignore the extension and how it changes the meaning of the information contained. 

The Composition object returned has a ModifierExtension for warnings about a patient's membership status. These statuses affect the currency or accuracy of information returned. Examples include members whose subscription have lapsed, are uncontactable, or new enrolments whose information has not yet been verified. 

An example of the ModifierExtension that may be returned in a patient summary on the Composition resource is shown below:

```
"modifierExtension": [
    {
        "url": "https://standards.medicalert.nz/MemberStatusWarning",
        "valueCoding": {
            "system": "https://standards.medicalert.nz/CodeSystem/MemberStatusWarning",
            "code": "New Member Enrolment",
            "display": "ALL EMERGENCY PERSONNEL SHOULD PROCEED WITH CAUTION AS INFORMATION HELD ON THIS FILE CAN NOT BE VERIFIED"
        }
    }
]
```


## MustSupport

Consumers of the API SHALL be capable of displaying all mustSupport data elements for human use or processing as part of the clinical workflow. 
