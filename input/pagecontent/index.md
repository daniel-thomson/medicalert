### Introduction

This is the Implementation Guide for the MedicAlert Foundation NZ First Responser FHIR© API. The First Responser API is a REST API that can be used by approved partners and vendors to:

* Retrieve an individual's summary emergency record by their MedicAlert Member Id or NHI.

Either An NHI number Or a MedicAlert Member Id is used as the identifier to request a the emergency record.

### Expected usage

Below are some common uses cases:

* Discover existing medical conditions when a person can't talk for themselves
* Load a patients drug allergies before adminstering drugs
* Notify an emergency contact
* Validate a DNR order


Access to First Responder API can only be granted for:

* Individual themselves
* Health Sector Professionals with a role in:
* Emergency help lines
* Paramedics
* Providing health services (Doctors, Nurses, Midwives, etc.)
* Allied services

If you are planning to develop an application for any of the above mentioned use cases or if you have any other use case that might benefit the health sector or the patients, we would love to hear from you and work with you to get you access to the service

### Data sources

Data is aquired via several connected services, the Member themselves and their Health providers. MedicAlert Foundation NZ reviews, codes, catagorises and rates the data into information that is useful when providing care. Some of these sources are documented on the Data Sources Page

If you are a custodian of a data source that could be better utalised to help prevent harm and save lives, please contact us to discuss integration opportunities.

### Resources and profiles

The API is a HL7® FHIR© API based on Internationl Patient Summary

The result is a Bundle resource. The Bundle resource has a Composition resource with attestation and references etc and uses the Resources:
* Patient
* AllergyIntolerance
* Condition
* Advance Directives

It supports the standard FHIR query syntax for returning a member's IPS with a search using an identifier (MemberId or NHI).
