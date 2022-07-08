// ignore_for_file: invalid_annotation_target

import 'package:fhir/r5.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../requests.dart';

part 'device_request.freezed.dart';
part 'device_request.g.dart';
part 'device_requested.dart';

@freezed
class RDeviceRequest with _$RDeviceRequest {
  RDeviceRequest._();

  factory RDeviceRequest({
    @Default(R5ResourceType.DeviceRequest) R5ResourceType resourceType,
    Id? id,
    Meta? meta,
    FhirUri? implicitRules,
    Code? language,
    Narrative? text,
    List<Resource>? contained,
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    Reference? instantiatesCanonical,
    List<FhirUri>? instantiatesUri,
    List<Reference>? basedOn,
    List<Reference>? priorRequest,
    Identifier? groupIdentifier,
    Code? status,
    required Code? intent,
    Code? priority,
    required DeviceRequested code,
    List<DeviceRequestParameter>? parameter,
    required Reference subject,
    Reference? encounter,
    Occurrence? occurrence,
    FhirDateTime? authoredOn,
    Reference? requester,
    CodeableConcept? performerType,
    Reference? performer,
    List<CodeableConcept>? reasonCode,
    List<Reference>? reasonReference,
    List<Reference>? insurance,
    List<Reference>? supportingInfo,
    List<Annotation>? note,
    List<Reference>? relevantHistory,
  }) = _RDeviceRequest;

  factory RDeviceRequest.simplified({
    Id? id,
    Meta? meta,
    FhirUri? implicitRules,
    Code? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    Reference? instantiatesCanonical,
    List<FhirUri>? instantiatesUri,
    List<Reference>? basedOn,
    List<Reference>? priorRequest,
    Identifier? groupIdentifier,
    required RequestIntent requestIntent,
    RequestStatus? requestStatus,
    RequestPriority? requestPriority,
    required DeviceRequested code,
    List<DeviceRequestParameter>? parameter,
    required Reference subject,
    Reference? encounter,
    Occurrence? occurrence,
    FhirDateTime? authoredOn,
    Reference? requester,
    CodeableConcept? performerType,
    Reference? performer,
    List<CodeableConcept>? reasonCode,
    List<Reference>? reasonReference,
    List<Reference>? insurance,
    List<Reference>? supportingInfo,
    List<Annotation>? note,
    List<Reference>? relevantHistory,
  }) {
    return RDeviceRequest(
      intent: requestIntentToCode[requestIntent],
      code: code,
      subject: subject,
      status: requestStatus != null ? requestStatusToCode[requestStatus] : null,
      priority: requestPriority != null
          ? requestPriorityToCode[requestPriority]
          : null,
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
                  'http://hl7.org/fhir/us/dme-orders/StructureDefinition/PAOX-devicerequest'),
            ],
          ),
      modifierExtension: modifierExtension,
      note: note,
      occurrence: occurrence,
      parameter: parameter,
      performer: performer,
      performerType: performerType,
      priorRequest: priorRequest,
      reasonCode: reasonCode,
      reasonReference: reasonReference,
      relevantHistory: relevantHistory,
      requester: requester,
      resourceType: R5ResourceType.DeviceRequest,
      supportingInfo: supportingInfo,
      text: text,
    );
  }

  factory RDeviceRequest.fromJson(Map<String, dynamic> json) =>
      _$RDeviceRequestFromJson(json);
}
