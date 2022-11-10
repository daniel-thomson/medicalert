ValueSet: MARiskRating
Id: ma-risk-rating-vs
Title: "MedicAlertRiskRatings"
Description: "Risk rating valueset for tags"
* ^url = "https://standards.medicalert.nz/ValueSet/RiskRating"

* codes from system https://standards.medicalert.nz/CodeSystem/RiskRating

CodeSystem: MARiskRating
Id: ma-risk-rating-cs
Title: "MedicAlertRiskRatings"
Description: "Risk rating valueset for tags"
* ^url = "https://standards.medicalert.nz/CodeSystem/RiskRating"

* #"0.1-1.99" "Life Threatening" 
* #"2-2.99" "Permanent Harm"
* #"3-3.99" "Low Harm"
* #"4" "Information / don't disclose"

