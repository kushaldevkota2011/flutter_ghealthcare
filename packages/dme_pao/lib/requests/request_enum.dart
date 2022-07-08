// ignore_for_file: constant_identifier_names

import 'package:fhir/r5.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// http://hl7.org/fhir/R4/valueset-request-status.html
enum RequestStatus {
  @JsonValue('Draft')
  draft,
  @JsonValue('Active')
  active,
  @JsonValue('On Hold')
  on_hold,
  @JsonValue('Revoked')
  revoked,
  @JsonValue('Completed')
  completed,
  @JsonValue('Entered in Error')
  entered_in_error,
  @JsonValue('Unknown')
  unknown,
}

final Map<RequestStatus, Code> requestStatusToCode = {
  RequestStatus.draft: Code('draft'),
  RequestStatus.active: Code('active'),
  RequestStatus.on_hold: Code('on-hold'),
  RequestStatus.revoked: Code('revoked'),
  RequestStatus.completed: Code('completed'),
  RequestStatus.entered_in_error: Code('entered-in-error'),
  RequestStatus.unknown: Code('unknown'),
};

// http://hl7.org/fhir/R4/valueset-request-intent.html
enum RequestIntent {
  @JsonValue('Proposal')
  proposal,
  @JsonValue('Plan')
  plan,
  @JsonValue('Directive')
  directive,
  @JsonValue('Order')
  order,
  @JsonValue('Original order')
  originial_order,
  @JsonValue('Reflex Order')
  reflex_order,
  @JsonValue('Filler Order')
  filler_order,
  @JsonValue('Instance Order')
  instance_order,
  @JsonValue('Option')
  option,
}

final Map<RequestIntent, Code> requestIntentToCode = {
  RequestIntent.proposal: Code('proposal'),
  RequestIntent.plan: Code('plan'),
  RequestIntent.directive: Code('directive'),
  RequestIntent.order: Code('order'),
  RequestIntent.originial_order: Code('originial-order'),
  RequestIntent.filler_order: Code('filler-order'),
  RequestIntent.reflex_order: Code('reflex-order'),
  RequestIntent.instance_order: Code('instance-order'),
  RequestIntent.option: Code('option'),
};

// http://hl7.org/fhir/request-priority
enum RequestPriority {
  @JsonValue('Routine')
  routine,
  @JsonValue('Urgent')
  urgent,
  @JsonValue('ASAP')
  asap,
  @JsonValue('STAT')
  stat
}

final Map<RequestPriority, Code> requestPriorityToCode = {
  RequestPriority.asap: Code('asap'),
  RequestPriority.routine: Code('routine'),
  RequestPriority.urgent: Code('urgent'),
  RequestPriority.stat: Code('stat'),
};
