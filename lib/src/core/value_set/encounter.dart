// ignore_for_file: constant_identifier_names

import 'package:fhir/r5.dart';
import 'package:json_annotation/json_annotation.dart';

const encounterStatus = {
  'planned': "Planned",
  'arrived': "Arrived",
  'triaged': "Triaged",
  'onleave': "On Leave",
  'finished': "Finished",
  'cancelled': "Cancelled",
  'entered-in-error': "Entered in Error",
  'unknown': 'Unknown'
};

const encounterCode = {
  'AMB': "ambulatory",
  'EMER': "emergency",
  'FLD': "field",
  'HH': "home health",
  'IMP': "inpatient encounter",
  'ACUTE': "inpatient acute",
  'NONAC': "inpatient non-acute",
  'OBSENC': "observation encounter",
  'PRENC': "pre-admission",
  'SS': "short stay",
  'VR': "virtual",
};

enum EncounterClass {
  ambulatory,
  emergency,
  field,
  home_health,
  inpatinent_encounter,
  inpatient_acute,
  inpatient_non_acute,
  observation_encounter,
  pre_admission,
  short_stay,
  virtual
}

final Map<EncounterClass, Coding> encounterClassToCoding = {
  EncounterClass.ambulatory: Coding(
    code: Code('AMB'),
    system: FhirUri('http://terminology.hl7.org/CodeSystem/v3-ActCode'),
    display: 'ambulatory',
  ),
  EncounterClass.emergency: Coding(
    code: Code('EMER'),
    system: FhirUri('http://terminology.hl7.org/CodeSystem/v3-ActCode'),
    display: 'emergency',
  ),
  EncounterClass.field: Coding(
    code: Code('FLD'),
    system: FhirUri('http://terminology.hl7.org/CodeSystem/v3-ActCode'),
    display: 'emergency',
  ),
  EncounterClass.home_health: Coding(
    code: Code('HH'),
    system: FhirUri('http://terminology.hl7.org/CodeSystem/v3-ActCode'),
    display: 'home health',
  ),
  EncounterClass.inpatinent_encounter: Coding(
    code: Code('IMP'),
    system: FhirUri('http://terminology.hl7.org/CodeSystem/v3-ActCode'),
    display: 'inpatinent encounter',
  ),
  EncounterClass.inpatient_acute: Coding(
    code: Code('ACUTE'),
    system: FhirUri('http://terminology.hl7.org/CodeSystem/v3-ActCode'),
    display: 'inpatient acute',
  ),
  EncounterClass.inpatient_non_acute: Coding(
    code: Code('NONAC'),
    system: FhirUri('http://terminology.hl7.org/CodeSystem/v3-ActCode'),
    display: 'inpatient non-acute',
  ),
  EncounterClass.observation_encounter: Coding(
    code: Code('OBSENC'),
    system: FhirUri('http://terminology.hl7.org/CodeSystem/v3-ActCode'),
    display: 'observation encounter',
  ),
  EncounterClass.pre_admission: Coding(
    code: Code('PRENC'),
    system: FhirUri('http://terminology.hl7.org/CodeSystem/v3-ActCode'),
    display: 'pre-admission',
  ),
  EncounterClass.short_stay: Coding(
    code: Code('SS'),
    system: FhirUri('http://terminology.hl7.org/CodeSystem/v3-ActCode'),
    display: 'short stay',
  ),
  EncounterClass.virtual: Coding(
    code: Code('VR'),
    system: FhirUri('http://terminology.hl7.org/CodeSystem/v3-ActCode'),
    display: 'virtual',
  ),
};

const priority = {
  'A': "ASAP",
  'CR': "callback results",
  'EL': "elective",
  'EM': "emergency",
  'P': "preop",
  'PRN': "as needed",
  'R': "routine",
  'RR': "rush reporting",
  'S': "stat",
  'T': "timing critical",
  'UD': "use as directed",
  'UR': "urgent",
  'CS': 'callback',
  'CSP': 'callback placer for scheduling',
  'CSR': 'contact recipient for scheduling',
};

const encounterType = {
  'ADMS': 'Annual diabetes mellitus screening',
  'BD/BM-clin': 'Bone drilling/bone marrow punction in clinic',
  'CCS60': 'Infant colon screening - 60 minutes',
  'OKI': 'Outpatient Kenacort injection',
};

/// url: http://hl7.org/fhir/R4/valueset-encounter-admit-source.html
///
const encounterAdmitSource = {
  'hosp-trans': 'Transferred from other hospital',
  'emd': 'From accident/emergency department',
  'outp': 'From outpatient department',
  'born': 'Born in hospital',
  'gp': 'General Practitioner referral',
  'mp': 'Medical Practitioner/physician referral',
  'nursing': 'From nursing home',
  'psych': 'From psychiatric hospital',
  'rehab': 'From rehabilitation facility',
  'other': 'Other',
};

/// url: http://hl7.org/fhir/R4/valueset-encounter-special-courtesy.html
///
const encounterSpeciaCourtsey = {
  'EXT': 'extended courtesy',
  'NRM': 'normal courtesy',
  'PRF': 'professional courtesy',
  'STF': 'staff	Courtesies',
  'VIP': 'very important person',
};

/// url: http://hl7.org/fhir/R4/valueset-encounter-special-arrangements.html

const encounterSpecialArranements = {
  'wheel': 'Wheel Chair',
  'added-bed': 'Additional bedding',
  'int': 'Interpreter',
  'att': 'Attendent',
  'dog': 'Guide Dog',
};

/// url: http://hl7.org/fhir/R4/valueset-encounter-location-status.html
///
const encounterLocationStatus = {
  'planned': 'Planned',
  'active': 'Active',
  'reserved': 'Reserved',
  'completed': 'Completed',
};

enum EncounterType { outpatient, inpatient, surgical_day, nursing_home }

final codeableConceptFromEncounterType = {
  EncounterType.outpatient: CodeableConcept(
    text: 'OutPatinet',
    coding: [
      Coding(
        code: Code('OutPatinet'),
        display: 'OutPatinet',
        system: FhirUri(
            'https://build.fhir.org/ig/HL7/US-Core/ValueSet-us-core-encounter-type.html'),
      ),
    ],
  ),
  EncounterType.nursing_home: CodeableConcept(
    text: 'Nursing home',
    coding: [
      Coding(
        code: Code('Nursing home'),
        display: 'Nursing home',
        system: FhirUri(
            'https://build.fhir.org/ig/HL7/US-Core/ValueSet-us-core-encounter-type.html'),
      ),
    ],
  ),
  EncounterType.inpatient: CodeableConcept(
    text: 'InPatinet',
    coding: [
      Coding(
        code: Code('InPatinet'),
        display: 'InPatinet',
        system: FhirUri(
            'https://build.fhir.org/ig/HL7/US-Core/ValueSet-us-core-encounter-type.html'),
      ),
    ],
  ),
  EncounterType.surgical_day: CodeableConcept(
    text: 'Surgical-day',
    coding: [
      Coding(
        code: Code('Surgical-day'),
        display: 'Surgical-day',
        system: FhirUri(
            'https://build.fhir.org/ig/HL7/US-Core/ValueSet-us-core-encounter-type.html'),
      ),
    ],
  ),
};

/// Procedure
// Consultation (procedure)
// Encounter for check up (procedure)
// Encounter for fear
// Encounter for fitness for duty exam (procedure)
// Encounter for problem (procedure)
// Encounter for sign (procedure)
// Encounter for symptom (procedure)
// Follow-up encounter
// History and physical examination with evaluation and management of nursing facility patient
// History and physical examination with evaluation and management of patient (procedure)
// Home visit (procedure)
// Indirect encounter
// Initial evaluation and management of healthy individual (procedure)
// Nursing evaluation of patient and report
// Office visit for pediatric care and assessment (procedure)
// Patient-initiated encounter
// Periodic reevaluation and management of healthy individual (procedure)
// Physician visit with evaluation AND/OR management service (procedure)

enum PatientEncounterProcedure {
  @JsonValue("Consulation")
  consulation,

  @JsonValue("Encounter For check up")
  encounter_for_check_up,

  @JsonValue("Encounter For fear")
  encounter_for_dear,

  @JsonValue("Encounter for fitness for duty exam")
  encounter_for_fitness_for_duty_exam,

  @JsonValue("Encounter for problem")
  encounter_for_problem,

  @JsonValue("Encounter for sign")
  encounter_for_sign,

  @JsonValue("Encounter for symptom")
  encounter_for_symptom,

  @JsonValue("Follow-up encounter")
  follow_up_encounter,

  @JsonValue(
      "History and physical examination with evaluation and management of nursing facility patient")
  history_and_physical_examination_with_evaluation_and_management_of_nursing_facility_patient,

  @JsonValue(
      "History and physical examination with evaluation and management of patient")
  history_and_physical_examination_with_evaluation_and_management_of_patinet,

  @JsonValue("Home visit")
  home_visit,

  @JsonValue("Indirect encounter")
  indirect_encounter,

  @JsonValue("Initial evaluation and management of healthy individual")
  initial_evaluation_and_management_of_healthy_indivisual,

  @JsonValue("Nursing evaluation of patient and report")
  nursing_evaluation_of_patient_and_report,

  @JsonValue("Office visit for pediatric care and assessment")
  office_visit_for_pediatric_care_and_assessment,

  @JsonValue("Patient-initiated encounter")
  patient_initiated_encounter,

  @JsonValue("Periodic reevaluation and management of healthy individual")
  periodic_reevaluation_and_management_of_healthy_inidvisual,

  @JsonValue("Physician visit with evaluation AND/OR management service")
  physician_visit_with_evalutaion_and_or_management_service,

  @JsonValue("Provider-initiated encounter")
  provider_initiated_encounter,

  @JsonValue("Provision of continuity of care")
  provision_of_continuity_of_care,

  @JsonValue("Visit out of hours")
  visit_out_of_hours,

  @JsonValue("Visit with nurse at next appointment requested")
  visit_with_nurse_at_next_appointment_requested,
}

// https://med.noridianmedicare.com/web/jfa/topics/claim-submission/patient-discharge-status-codes
// http://hl7.org/fhir/us/core/ValueSet/us-core-discharge-disposition
final dischargeDesposition = {
  '01': 'Discharged to home or self-care (routine discharge)',
  '02':
      'Discharged/transferred to a short-term general hospital for inpatient care',
  '03':
      'Discharged/transferred to skilled nursing facility (SNF) with Medicare certification',
  '04':
      'Discharged/transferred to a facility that provides custodial or supportive care',
  '05':
      'Discharged/transferred to a designated cancer center or children\'s hospital',
  '06':
      'Discharged/transferred to home under care of organized home health service organization in anticipation of covered skilled care',
  '07': 'Left against medical advice or discontinued care',
  // '08': 'Reserved for national assignment',
  '09': 'Admitted as an inpatient to this hospital',
  // '10': 'Reserved for national assignment',
  '20': 'Expired',
  '21': 'Discharged/transferred to court/law enforcement',
  // '22': 'Reserved for national assignment',
  '30': 'Still patient',
  // '31': 'Reserved for national assignment',
  '40': 'Expired at home',
  '41':
      'Expired in a medical facility (e.g., hospital, SNF, ICF, or free-standing hospice)',
  '42': 'Expired - place unknown',
  '43': 'Discharged/transferred to a federal health care facility',
  // '44': 'Reserved for national assignment',
  '50': 'Hospice - home',
  '51':
      'Hospice - medical facility (certified) providing hospice level of care',
  // '52': 'Reserved for national assignment',
  '61':
      'Discharged/transferred to a hospital-based Medicare approved swing bed',
  '62':
      'Discharged/transferred to an inpatient rehabilitation facility (IRF) including rehabilitation distinct part units of a hospital',
  '63':
      'Discharged/transferred to a Medicare certified long term care hospital (LTCH)',
  '64':
      'Discharged/transferred to a nursing facility certified under Medicaid but not certified under Medicare',
  '65':
      'Discharged/transferred to a psychiatric hospital or psychiatric distinct part unit of a hospital',
  '66': 'Discharged/transferred to a critical access hospital (CAH)',
  // '67': 'Reserved for national assignment',
  // '68': 'Reserved for national assignment',
  '69':
      'Discharged/transferred to a designated disaster alternate care site (effective 10/1/13)',
  '70':
      'Discharged/transferred to another type of health care institution not defined elsewhere in this code list',
  // '71': 'Discontinued 4/1/03',
  // '72': 'Discontinued 4/1/03',
  // '73': 'Reserved for national assignment',
  '81':
      'Discharged to home or self-care with a planned acute care hospital inpatient readmission (effective 10/1/13)',
  '82':
      'Discharged/transferred to a short-term general hospital for inpatient care with a planned acute care hospital inpatient readmission (effective 10/1/13)',
  '83':
      'Discharged/transferred to a skilled nursing facility (SNF) with Medicare certification with a planned acute care hospital inpatient readmission (effective 10/1/13)',
  '84':
      'Discharged/transferred to a facility that provides custodial or supportive care with a planned acute care hospital inpatient readmission (effective 10/1/13)',
  '85':
      'Discharged/transferred to a designated cancer center or children\'s hospital with a planned acute care hospital inpatient readmission (effective 10/1/13)',
  '86':
      'Discharged/transferred to home under care of organized home health service organization in anticipation of covered skilled care with a planned acute care hospital inpatient readmission (effective 10/1/13)',
  '87':
      'Discharged/transferred to court/law enforcement with a planned acute care hospital inpatient readmission (effective 10/1/13)',
  '88':
      'Discharged/transferred to a federal health care facility with a planned acute care hospital inpatient readmission (effective 10/1/13)',
  '89':
      'Discharged/transferred to a hospital-based Medicare approved swing bed with a planned acute care hospital inpatient readmission (effective 10/1/13)',
  '90':
      'Discharged/transferred to an inpatient rehabilitation facility (IRF) including rehabilitation distinct part units of a hospital with a planned acute care hospital inpatient readmission (effective 10/1/13)',
  '91':
      'Discharged/transferred to a Medicare certified long term care hospital (LTCH) with a planned acute care hospital inpatient readmission (effective 10/1/13)',
  '92':
      'Discharged/transferred to a nursing facility certified under Medicaid but not certified under Medicare with a planned acute care hospital inpatient readmission (effective 10/1/13)',
  '93':
      'Discharged/transferred to a psychiatric hospital or psychiatric distinct part unit of a hospital with a planned acute care hospital inpatient readmission (effective 10/1/13)',
  '94':
      'Discharged/transferred to a critical access hospital (CAH) with a planned acute care hospital inpatient readmission (effective 10/1/13)',
  '95':
      'Discharged/transferred to another type of health care institution not defined elsewhere in this code list with a planned acute care hospital inpatient readmission (effective 10/1/13)',
  // '96': 'Reserved for national assignment',
};
