Profile: ExtensionsObservation
Parent: Observation
Id: extensions-observation
Title: "Extensions Observation"
Description: "extensions observations"
* code.coding.system = DCM
* code.coding.code = #111402
* code.coding.display = "Clinical Finding"

* interpretation MS
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#ObservationInterpretationDetection "ObservationInterpretationDetection"
* interpretation.extension MS
* interpretation.extension contains 
  SHSInterpretationExtension named differentialInterpretation 0..* MS


Extension: SHSInterpretationExtension
Id: shs-interpretation-extension
Title: "SHS Interpretation Extension"
Description: "Interpretation Extension to be used in Observations"
* url MS
* extension MS
* extension contains 
  impressionValue 0..1 MS and
  statusDescriptor 0..1 MS and
  confidenceQuantity 0..1 MS and
  certaintyOfFindingValue 0..1 MS

* extension[impressionValue] ^short = "Impression"
* extension[impressionValue] ^definition = "Impression"
* extension[impressionValue].url MS
* extension[impressionValue].value[x] MS
* extension[impressionValue].value[x] only CodeableConcept
* extension[impressionValue].valueCodeableConcept MS
* extension[impressionValue].valueCodeableConcept.coding MS
* extension[impressionValue].valueCodeableConcept.coding.system MS
* extension[impressionValue].valueCodeableConcept.coding.code MS
* extension[impressionValue].valueCodeableConcept.coding.display MS
* extension[impressionValue].valueCodeableConcept from InterpretationValueSet (extensible)

* extension[statusDescriptor] ^short = "Status descriptor"
* extension[statusDescriptor] ^definition = "Status descriptor"
* extension[statusDescriptor].url MS
* extension[statusDescriptor].value[x] MS
* extension[statusDescriptor].value[x] only CodeableConcept
* extension[statusDescriptor].valueCodeableConcept MS
* extension[statusDescriptor].valueCodeableConcept.coding MS
* extension[statusDescriptor].valueCodeableConcept.coding.system MS
* extension[statusDescriptor].valueCodeableConcept.coding.code MS
* extension[statusDescriptor].valueCodeableConcept.coding.display MS
* extension[statusDescriptor].valueCodeableConcept from StatusDescriptorValueSet

* extension[confidenceQuantity] ^short = "Confidence"
* extension[confidenceQuantity] ^definition = "Confidence Rate of Impression"
* extension[confidenceQuantity].url MS
* extension[confidenceQuantity].value[x] MS
* extension[confidenceQuantity].value[x]  only Quantity
* extension[confidenceQuantity].valueQuantity MS
* extension[confidenceQuantity].valueQuantity.value MS
* extension[confidenceQuantity].valueQuantity.unit MS
* extension[confidenceQuantity].valueQuantity.system = UCUM
* extension[confidenceQuantity].valueQuantity.system MS
* extension[confidenceQuantity].valueQuantity.code MS

* extension[certaintyOfFindingValue] ^short = "Certainty of Finding"
* extension[certaintyOfFindingValue] ^definition = "Certainty of Finding"
* extension[certaintyOfFindingValue].url MS
* extension[certaintyOfFindingValue].value[x] MS
* extension[certaintyOfFindingValue].value[x] only Quantity
* extension[certaintyOfFindingValue].valueQuantity MS
* extension[certaintyOfFindingValue].valueQuantity.value MS
* extension[certaintyOfFindingValue].valueQuantity.unit MS
* extension[certaintyOfFindingValue].valueQuantity.system = UCUM
* extension[certaintyOfFindingValue].valueQuantity.system MS
* extension[certaintyOfFindingValue].valueQuantity.code MS