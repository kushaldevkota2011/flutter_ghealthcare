// ignore_for_file: constant_identifier_names

part of 'medication_request.dart';

enum MedicationRequestStatusReason {
  @JsonValue('Try another treatment first')
  try_another_treatment_first,
  @JsonValue('Prescription requires clarification')
  prescription_requires_clarification,
  @JsonValue('Drug level too high')
  drug_level_too_high,
  @JsonValue('Admission to hospital')
  admission_to_hospital,
  @JsonValue('Lab interference issues')
  lab_interference_issues,
  @JsonValue('Patient not available')
  patient_not_available,
  @JsonValue('Parent is pregnant/breast feeding')
  parent_is_pregnant_or_breast_feeding,
  @JsonValue('Allergy')
  allergy,
  @JsonValue('Drug interacts with another drug')
  drug_interacts_with_another_drug,
  @JsonValue('Duplicate therapy')
  duplicate_therapy,
  @JsonValue('Suspected intolerance')
  suspected_intolerance,
  @JsonValue('Patient scheduled for surgery')
  patient_scheduled_for_surgery,
  @JsonValue('Waiting for old drug to wash out')
  waiting_for_old_drug_to_wash_out,
}

final Map<MedicationRequestStatusReason, CodeableConcept>
    medicationRequestStatusReasonToCodealbleConcept = {
  MedicationRequestStatusReason.admission_to_hospital: CodeableConcept(
    text: 'Admission to hospital',
    coding: [
      Coding(
          code: Code('hospadm'),
          system: FhirUri(
              'http://hl7.org/fhir/R4/valueset-medicationrequest-status-reason.html'),
          display: 'Admission to hospital'),
    ],
  ),
  MedicationRequestStatusReason.allergy: CodeableConcept(
    text: 'Allergy',
    coding: [
      Coding(
          code: Code('salg'),
          display: 'Allergy',
          system: FhirUri(
              'http://hl7.org/fhir/R4/valueset-medicationrequest-status-reason.html')),
    ],
  ),
  MedicationRequestStatusReason.drug_interacts_with_another_drug:
      CodeableConcept(
    text: 'Drug interacts with another drug',
    coding: [
      Coding(
          code: Code('sddi'),
          display: 'Drug interacts with another drug',
          system: FhirUri(
              'http://hl7.org/fhir/R4/valueset-medicationrequest-status-reason.html')),
    ],
  ),
  MedicationRequestStatusReason.drug_level_too_high: CodeableConcept(
    text: 'Drug level too high',
    coding: [
      Coding(
          code: Code('drughigh'),
          display: 'Drug level too high',
          system: FhirUri(
              'http://hl7.org/fhir/R4/valueset-medicationrequest-status-reason.html')),
    ],
  ),
  MedicationRequestStatusReason.duplicate_therapy: CodeableConcept(
    text: 'Duplicate therapy',
    coding: [
      Coding(
          display: 'Duplicate therapy',
          code: Code('sdupther'),
          system: FhirUri(
              'http://hl7.org/fhir/R4/valueset-medicationrequest-status-reason.html')),
    ],
  ),
  MedicationRequestStatusReason.lab_interference_issues: CodeableConcept(
    text: 'Lab interference issues',
    coding: [
      Coding(
          code: Code('labint'),
          display: 'Lab interference issues',
          system: FhirUri(
              'http://hl7.org/fhir/R4/valueset-medicationrequest-status-reason.html')),
    ],
  ),
  MedicationRequestStatusReason.parent_is_pregnant_or_breast_feeding:
      CodeableConcept(
    text: 'Parent is pregnant/breast feeding',
    coding: [
      Coding(
          code: Code('preg'),
          display: 'Parent is pregnant/breast feeding',
          system: FhirUri(
              'http://hl7.org/fhir/R4/valueset-medicationrequest-status-reason.html')),
    ],
  ),
  MedicationRequestStatusReason.patient_not_available: CodeableConcept(
    text: 'Patient not available',
    coding: [
      Coding(
          code: Code('non-avail'),
          display: 'Patient not available',
          system: FhirUri(
              'http://hl7.org/fhir/R4/valueset-medicationrequest-status-reason.html')),
    ],
  ),
  MedicationRequestStatusReason.patient_scheduled_for_surgery: CodeableConcept(
    text: 'Patient scheduled for surgery',
    coding: [
      Coding(
          code: Code('surg'),
          display: 'Patient scheduled for surgery',
          system: FhirUri(
              'http://hl7.org/fhir/R4/valueset-medicationrequest-status-reason.html')),
    ],
  ),
  MedicationRequestStatusReason.prescription_requires_clarification:
      CodeableConcept(
    text: 'Prescription requires clarification',
    coding: [
      Coding(
          display: 'Prescription requires clarification',
          code: Code('clarif'),
          system: FhirUri(
              'http://hl7.org/fhir/R4/valueset-medicationrequest-status-reason.html')),
    ],
  ),
  MedicationRequestStatusReason.suspected_intolerance: CodeableConcept(
    text: 'Suspected intolerance',
    coding: [
      Coding(
          code: Code('sintol'),
          display: 'Suspected intolerance',
          system: FhirUri(
              'http://hl7.org/fhir/R4/valueset-medicationrequest-status-reason.html')),
    ],
  ),
  MedicationRequestStatusReason.try_another_treatment_first: CodeableConcept(
    text: 'Try another treatment first',
    coding: [
      Coding(
          code: Code('altchoice'),
          display: 'Try another treatment first',
          system: FhirUri(
              'http://hl7.org/fhir/R4/valueset-medicationrequest-status-reason.html')),
    ],
  ),
  MedicationRequestStatusReason.waiting_for_old_drug_to_wash_out:
      CodeableConcept(
    text: 'Waiting for old drug to wash out',
    coding: [
      Coding(
          code: Code('washout'),
          display: 'Waiting for old drug to wash out',
          system: FhirUri(
              'http://hl7.org/fhir/R4/valueset-medicationrequest-status-reason.html')),
    ],
  ),
};

// http://hl7.org/fhir/R4/codesystem-medicationrequest-intent.html

enum MedicationRequestIntent {
  proposal,
  plan,
  order,
  oringinal_order,
  reflex_order,
  filler_order,
  instance_order,
  option,
}

final Map<MedicationRequestIntent, Code> medicationRequestIntentToCode = {
  MedicationRequestIntent.filler_order: Code('filler-order'),
  MedicationRequestIntent.instance_order: Code('instance-order'),
  MedicationRequestIntent.option: Code('option'),
  MedicationRequestIntent.order: Code('order'),
  MedicationRequestIntent.oringinal_order: Code('original-order'),
  MedicationRequestIntent.plan: Code('plan'),
  MedicationRequestIntent.proposal: Code('proposal'),
  MedicationRequestIntent.reflex_order: Code('reflex-order'),
};

// http://hl7.org/fhir/R4/valueset-medicationrequest-category.html
enum MedicationRequestCategory {
  inpatient,
  outpatient,
  community,
  discharge,
}

final Map<MedicationRequestCategory, CodeableConcept>
    medicationRequestCategoryToCodeableConcept = {
  MedicationRequestCategory.community: CodeableConcept(
    text: 'Community',
    coding: [
      Coding(
        code: Code('community'),
        display: 'Community',
        system: FhirUri(
            'http://hl7.org/fhir/R4/valueset-medicationrequest-category.html'),
      ),
    ],
  ),
  MedicationRequestCategory.discharge: CodeableConcept(
    text: 'Diacharge',
    coding: [
      Coding(
        code: Code('discharge'),
        display: 'Discharge',
        system: FhirUri(
            'http://hl7.org/fhir/R4/valueset-medicationrequest-category.html'),
      ),
    ],
  ),
  MedicationRequestCategory.inpatient: CodeableConcept(
    text: 'Inpatient',
    coding: [
      Coding(
        code: Code('inpatient'),
        display: 'Inpatient',
        system: FhirUri(
            'http://hl7.org/fhir/R4/valueset-medicationrequest-category.html'),
      ),
    ],
  ),
  MedicationRequestCategory.outpatient: CodeableConcept(
    text: 'OutPatient',
    coding: [
      Coding(
        code: Code('outpatient'),
        display: 'Outpatient',
        system: FhirUri(
            'http://hl7.org/fhir/R4/valueset-medicationrequest-category.html'),
      ),
    ],
  ),
};

// http://hl7.org/fhir/CodeSystem/medicationrequest-status

enum MedicationRequestStatus {
  active,
  on_hold,
  cancelled,
  completed,
  entered_in_error,
  stopped,
  draft,
  unknown,
}

final Map<MedicationRequestStatus, Code> medicationRequestStatusToCode = {
  MedicationRequestStatus.active: Code('active'),
  MedicationRequestStatus.cancelled: Code('cancelled'),
  MedicationRequestStatus.completed: Code('completed'),
  MedicationRequestStatus.draft: Code('draft'),
  MedicationRequestStatus.entered_in_error: Code('entered-in-error'),
  MedicationRequestStatus.on_hold: Code('on-hold'),
  MedicationRequestStatus.stopped: Code('stopped'),
  MedicationRequestStatus.unknown: Code('unknown'),
};
