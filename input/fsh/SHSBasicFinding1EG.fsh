Instance: BasicFindingExample
InstanceOf: ExtensionsObservation
Title: "Basic Finding 1"
Usage: #example
Description: "This example describes the basic finding"

* language = urn:ietf:bcp:47#en "English"
* identifier[0].value = "BasicFinding1" 
* identifier[=].system = "http://my-hospital.com/rad-system"
* status = 	http://hl7.org/fhir/observation-status#preliminary
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category.coding.code = #imaging
* category.coding.display = "Imaging"
* issued = "2022-10-07T17:31:15+01:00"
* effectiveDateTime = "2019-04-02T11:37:16+01:00"
* code.coding.system = DCM
* code.coding.code = #111402
* code.coding.display = "Clinical Finding"
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#ObservationInterpretationDetection "ObservationInterpretationDetection"
* interpretation.extension[differentialInterpretation].url = "http://example.org/StructureDefinition/shs-interpretation-extension"
* interpretation.extension[differentialInterpretation][0].extension[impressionValue][0].url = "impressionValue"
* interpretation.extension[differentialInterpretation][0].extension[impressionValue][0].valueCodeableConcept.coding.system = SCT
* interpretation.extension[differentialInterpretation][=].extension[impressionValue][=].valueCodeableConcept.coding.code = #85659009
* interpretation.extension[differentialInterpretation][=].extension[impressionValue][=].valueCodeableConcept.coding.display = "Aneurysm"

* interpretation.extension[differentialInterpretation][0].extension[statusDescriptor][0].valueCodeableConcept.coding.system = RADLEX
* interpretation.extension[differentialInterpretation][=].extension[statusDescriptor][=].valueCodeableConcept.coding.code = #RID5672
* interpretation.extension[differentialInterpretation][=].extension[statusDescriptor][=].valueCodeableConcept.coding.display = "Moderate"
