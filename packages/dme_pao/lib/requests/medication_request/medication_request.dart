// ignore_for_file: invalid_annotation_target

import 'package:fhir/r5.dart' hide Dosage;
import 'package:freezed_annotation/freezed_annotation.dart';

import '../requests.dart';

part 'medication_reported.dart';
part 'meidication_request_enum.dart';
part 'medication_request_medication.dart';
part 'medication_request.freezed.dart';
part 'medication_request.g.dart';

@freezed
class RMedicationRequest with _$RMedicationRequest {
  RMedicationRequest._();

  factory RMedicationRequest({
    @Default(R5ResourceType.MedicationRequest) R5ResourceType resourceType,
    Id? id,
    Meta? meta,
    FhirUri? implicitRules,
    Code? language,
    Narrative? text,
    List<Resource>? contained,
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    required Code status,
    CodeableConcept? statusReason,
    required Code? intent,
    List<CodeableConcept>? category,
    Code? priority,
    Boolean? doNotPerform,
    MedicationReported? reported,
    required MedicationRequestMedication medication,
    required Reference subject,
    Reference? encounter,
    Reference? supportingInformation,
    FhirDateTime? authoredOn,
    Reference? requester,
    CodeableConcept? performerType,
    Reference? performer,
    Reference? recorder,
    List<CodeableConcept>? reasonCode,
    List<Reference>? reasonReference,
    List<Reference>? instantiatesCanonical,
    FhirUri? instantiatesUri,
    Reference? basedOn,
    Identifier? groupIdentifier,
    CodeableConcept? courseOfTherapyType,
    List<Reference>? insurance,
    List<Annotation>? note,
    List<Dosage>? dosageInstruction,
    dispenseRequest,
    substitution,
    Reference? priorPrescription,
    List<Reference>? detectedIssue,
    List<Reference>? eventHistory,
  }) = _RMedicationRequest;

  factory RMedicationRequest.simplified({
    Id? id,
    Meta? meta,
    FhirUri? implicitRules,
    Code? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    required MedicationRequestStatus medicationRequestStatus,
    MedicationRequestStatusReason? statusReason,
    required MedicationRequestIntent medicationRequestIntent,
    List<MedicationRequestCategory>? category,
    RequestPriority? priority,
    Boolean? doNotPerform,
    MedicationReported? reported,
    required MedicationRequestMedication medication,
    required Reference subject,
    Reference? encounter,
    Reference? supportingInformation,
    FhirDateTime? authoredOn,
    Reference? requester,
    CodeableConcept? performerType,
    Reference? performer,
    Reference? recorder,
    List<CodeableConcept>? reasonCode,
    List<Reference>? reasonReference,
    List<Reference>? instantiatesCanonical,
    FhirUri? instantiatesUri,
    Reference? basedOn,
    Identifier? groupIdentifier,
    CodeableConcept? courseOfTherapyType,
    List<Reference>? insurance,
    List<Annotation>? note,
    List<Dosage>? dosageInstruction,
    dispenseRequest,
    substitution,
    Reference? priorPrescription,
    List<Reference>? detectedIssue,
    List<Reference>? eventHistory,
  }) {
    List<CodeableConcept>? data;
    if (category != null && category.isNotEmpty) {
      for (var item in category) {
        if (data != null) {
          data.add(medicationRequestCategoryToCodeableConcept[item]!);
        } else {
          data = [medicationRequestCategoryToCodeableConcept[item]!];
        }
      }
    }

    return RMedicationRequest(
      intent: medicationRequestIntentToCode[medicationRequestIntent],
      subject: subject,
      medication: medication,
      status: medicationRequestStatusToCode[medicationRequestStatus]!,
      category: data,
      authoredOn: authoredOn,
      basedOn: basedOn,
      contained: contained,
      encounter: encounter,
      extension_: extension_,
      groupIdentifier: groupIdentifier,
      id: id,
      identifier: identifier,
      implicitRules: implicitRules,
      instantiatesCanonical: instantiatesCanonical,
      instantiatesUri: instantiatesUri,
      insurance: insurance,
      language: language,
      meta: meta ??
          Meta(
            profile: [
              Canonical(
                  'http://hl7.org/fhir/us/dme-orders/StructureDefinition/PAOX-medication-request'),
            ],
          ),
      modifierExtension: modifierExtension,
      note: note,
      performer: performer,
      performerType: performerType,
      reasonCode: reasonCode,
      reasonReference: reasonReference,
      requester: requester,
      resourceType: R5ResourceType.MedicationRequest,
      text: text,
      courseOfTherapyType: courseOfTherapyType,
      detectedIssue: detectedIssue,
      dispenseRequest: dispenseRequest,
      doNotPerform: doNotPerform,
      dosageInstruction: dosageInstruction,
      eventHistory: eventHistory,
      priorPrescription: priorPrescription,
      priority: priority != null ? requestPriorityToCode[priority] : null,
      recorder: recorder,
      reported: reported,
      statusReason: statusReason != null
          ? medicationRequestStatusReasonToCodealbleConcept[statusReason]
          : null,
      substitution: substitution,
      supportingInformation: supportingInformation,
    );
  }

  factory RMedicationRequest.fromJson(Map<String, dynamic> json) =>
      _$RMedicationRequestFromJson(json);
}
