Alias: $usage-context-type = http://terminology.hl7.org/CodeSystem/usage-context-type
Alias: $activity-codes = http://fhir.org/guides/nachc/hiv-cds/CodeSystem/activity-codes

Instance: ASLPA1165
InstanceOf: Questionnaire
Usage: #definition
* extension[+]
  * url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-knowledgeCapability"
  * valueCode = #shareable
* extension[+]
  * url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-knowledgeCapability"
  * valueCode = #computable
* extension[+]
  * url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-knowledgeCapability"
  * valueCode = #publishable
* extension[+]
  * url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-knowledgeRepresentationLevel"
  * valueCode = #structured
* extension[+]
  * url = "http://hl7.org/fhir/StructureDefinition/cqf-library"
  * valueCanonical = "http://hl7.org/fhir/uv/cpg/hepb/Library/ASLPDataElements"
* url = "http://hl7.org/fhir/uv/cpg/hepb/Questionnaire/ASLPA1165"
* name = "ASLPA1165"
* title = "ASLP.A1 Adult Sleep Studies"
* status = #active
* experimental = false
* description = "Adult Sleep Studies Prior Authorization Form"
* useContext
  * code = $usage-context-type#task "Workflow Task"
  * valueCodeableConcept = $activity-codes#ASLP.A1 "Adult Sleep Studies"
* item[+]
  * extension
    * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemPopulationContext"
    * valueExpression
      * language = #text/cql-identifier
      * expression = "Sleep Study"
  * linkId = "0"
  * definition = "http://example.org/sdh/dtr/aslp/StructureDefinition/aslp-sleep-study-order"
  * text = "A sleep study procedure being ordered"
  * type = #group
  * repeats = true
  * item[+]
    * linkId = "1"
    * definition = "http://example.org/sdh/dtr/aslp/StructureDefinition/aslp-sleep-study-order#ServiceRequest.code"
    * text = "A sleep study procedure being ordered"
    * type = #choice
    * answerValueSet = "http://example.org/sdh/dtr/aslp/ValueSet/aslp-a1-de1-codes-grouper"
  * item[+]
    * linkId = "2"
    * definition = "http://example.org/sdh/dtr/aslp/StructureDefinition/aslp-sleep-study-order#ServiceRequest.occurrence[x]"
    * text = "Date of the procedure"
    * type = #dateTime
* item[+]
  * extension
    * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
    * valueExpression
      * language = #text/cql-identifier
      * expression = "Diagnosis of Obstructive Sleep Apnea"
  * linkId = "3"
  * definition = "http://example.org/sdh/dtr/aslp/StructureDefinition/aslp-diagnosis-of-obstructive-sleep-apnea#Condition.code"
  * text = "Diagnosis of Obstructive Sleep Apnea"
  * type = #choice
  * answerValueSet = "http://example.org/sdh/dtr/aslp/ValueSet/aslp-a1-de17"
* item[+]
  * extension
    * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
    * valueExpression
      * language = #text/cql-identifier
      * expression = "History of Hypertension"
  * linkId = "4"
  * definition = "http://example.org/sdh/dtr/aslp/StructureDefinition/aslp-history-of-hypertension#Observation.value[x]"
  * text = "History of Hypertension"
  * type = #boolean
* item[+]
  * extension
    * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
    * valueExpression
      * language = #text/cql-identifier
      * expression = "History of Diabetes"
  * linkId = "5"
  * definition = "http://example.org/sdh/dtr/aslp/StructureDefinition/aslp-history-of-diabetes#Observation.value[x]"
  * text = "History of Diabetes"
  * type = #boolean
* item[+]
  * extension
    * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
    * valueExpression
      * language = #text/cql-identifier
      * expression = "Neck Circumference"
  * linkId = "6"
  * definition = "http://example.org/sdh/dtr/aslp/StructureDefinition/aslp-height#Observation.value[x]"
  * text = "Neck circumference (in inches)"
  * type = #quantity
* item[+]
  * extension
    * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
    * valueExpression
      * language = #text/cql-identifier
      * expression = "Height"
  * linkId = "7"
  * definition = "http://example.org/sdh/dtr/aslp/StructureDefinition/aslp-height#Observation.value[x]"
  * text = "Height (in inches)"
  * type = #quantity
* item[+]
  * extension
    * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
    * valueExpression
      * language = #text/cql-identifier
      * expression = "Weight"
  * linkId = "8"
  * definition = "http://example.org/sdh/dtr/aslp/StructureDefinition/aslp-weight#Observation.value[x]"
  * text = "Weight (in pounds)"
  * type = #quantity
* item[+]
  * extension
    * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
    * valueExpression
      * language = #text/cql-identifier
      * expression = "BMI"
  * linkId = "9"
  * definition = "http://example.org/sdh/dtr/aslp/StructureDefinition/aslp-bmi#Observation.value[x]"
  * text = "Body mass index (BMI)"
  * type = #quantity