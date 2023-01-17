Extension: Note
Id: ma-note
Description: "Text extension to contain information where coded values aren't provided or appropriate"

* ^date = "2022-01-13"
* ^publisher = "MedicAlert"

* ^url = "https://standards.medicalert.nz/ns/note"
* ^context.type = #element
* ^context.expression = "Flag"
//* . ..1 ?!
* url = "https://standards.medicalert.nz/ns/note" (exactly)
* value[x] only Annotation
