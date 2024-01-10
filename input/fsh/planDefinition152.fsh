Alias: $library-type = http://terminology.hl7.org/CodeSystem/library-type
Alias: $usage-context-type = http://terminology.hl7.org/CodeSystem/usage-context-type
Alias: $sct = http://snomed.info/sct
Alias: $cvx = http://hl7.org/fhir/sid/cvx
Alias: $plan-definition-type = http://terminology.hl7.org/CodeSystem/plan-definition-type
Alias: $sct = http://snomed.info/sct
Alias: $immunization-calculation-engine = https://cdsframework.atlassian.net/wiki/spaces/ICE/pages/14352491/Hep+B+Vaccine+Group#HepBVaccineGroup-ImmunizationSeries:HepB2-doseAdultSeries
Alias: $cdc-hepb-prevention = http://www.cdc.gov/mmwr/volumes/67/rr/pdfs/rr6701-H.PDF
Alias: $adjuvanted-hepb-vaccine-recommendation = https://www.cdc.gov/mmwr/volumes/67/wr/pdfs/mm6715a5-H.pdf
Alias: $all-hepb-vaccines = http://example.org/fhir/uv/cpg/ValueSet/all-hepb-vaccines


Instance: HepBAdultForecastingPD152
InstanceOf: PlanDefinition
Usage: #definition
Title: "Immunization Forecasting of Hepatitis B Vaccine for Adults >= 18 Years of Age 152"
* identifier
  * use = #official
  * value = "HepBAdultForecastingPDM152"
* status = #draft
* experimental = true
* url = "http://hl7.org/fhir/uv/cpg/hepb/PlanDefinition/HepBAdultForecastingPDM152"
* name = "HepBAdultForecastingPDM152"
* type = $plan-definition-type#eca-rule "ECA Rule"
* description = "If an adult patient has not been immunized for Hep B and is indicated for a Hep B vaccine, providers should administer according to this forecast."
* useContext
  * code = $usage-context-type#focus "Clinical Focus"
  * valueCodeableConcept = $sct#384810002 "Immunization/vaccination management (procedure)"
* purpose = "Example artifact implementation of CDC ACIP Hep B vaccination guidelines for adults, 18 years and older, who have not yet been immunized."
* action
  * title = "Hep B Immunization Forecast 152"
  * description = "Vaccinate Adult with specified Hep B forecast, if noted"
  * documentation
    * type = #documentation
    * display = "Immunization Calculation Engine - Hep B 2-dose Adult Series"
    * url = $immunization-calculation-engine
  * trigger
    * type = #named-event
    * name = "patient-view"
  * condition
    * kind = #applicability
    * expression
      * description = "Is a Hep B Adult Recommendation Available?"
      * language = #text/cql
      * expression = "Patient Hep B Immunization History should be Evaluated in Adult Series"
  * groupingBehavior = #visual-group
  * selectionBehavior = #exactly-one
  * action[+].description = "Will Follow Recommendations Provided by This Forecast"
  * action[+].description = "Will not immunize due to contraindication(s) or other medical risk factors"
  * action[+].description = "Will not immunize due to patient preferences"
  * action[+].description = "N/A - see comment (will be reviewed by medical director)"