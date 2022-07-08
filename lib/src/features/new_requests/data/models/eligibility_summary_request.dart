// ignore_for_file: non_constant_identifier_names

import 'package:json_annotation/json_annotation.dart';

part 'eligibility_summary_request.g.dart';

@JsonSerializable()
class EligibilitySummaryRequest {
  final String payerCode;
  final String payerName;
  final Provider provider;
  final SummarySubscriber subscriber;
  final String isSubscriberPatient;
  final String doS_StartDate;
  final String doS_EndDate;
  @JsonKey(includeIfNull: false)
  final Dependent? dependent;
  @JsonKey(name: 'PracticeTypeCode', includeIfNull: false)
  final String? practiceTypeCode;
  @JsonKey(name: 'IncludeTextResponse', includeIfNull: false)
  final String? includeTextResponse;
  @JsonKey(includeIfNull: false)
  final String? referenceId;
  @JsonKey(name: 'Location', includeIfNull: false)
  final String? location;
  @JsonKey(name: 'InternalId', includeIfNull: false)
  final String? internalId;
  @JsonKey(name: 'CustomerID', includeIfNull: false)
  final String? customerId;

  EligibilitySummaryRequest({
    required this.payerCode,
    required this.payerName,
    required this.provider,
    required this.subscriber,
    required this.isSubscriberPatient,
    required this.doS_StartDate,
    required this.doS_EndDate,
    this.dependent,
    this.practiceTypeCode,
    this.includeTextResponse,
    this.referenceId,
    this.location,
    this.internalId,
    this.customerId,
  });

  factory EligibilitySummaryRequest.fromJson(Map<String, dynamic> json) =>
      _$EligibilitySummaryRequestFromJson(json);

  Map<String, dynamic> toJson() => _$EligibilitySummaryRequestToJson(this);
}

@JsonSerializable()
class Provider {
  @JsonKey(includeIfNull: false)
  final String? firstName;
  @JsonKey(includeIfNull: false)
  final String? middleName;
  final String lastName;
  final String npi;
  @JsonKey(includeIfNull: false)
  final String? pin;
  @JsonKey(includeIfNull: false)
  final String? taxonomy;

  Provider({
    this.firstName,
    this.middleName,
    required this.lastName,
    required this.npi,
    this.pin,
    this.taxonomy,
  });

  factory Provider.fromJson(Map<String, dynamic> json) =>
      _$ProviderFromJson(json);

  Map<String, dynamic> toJson() => _$ProviderToJson(this);
}

@JsonSerializable()
class SummarySubscriber {
  @JsonKey(includeIfNull: false)
  final String? firstName;
  @JsonKey(includeIfNull: false)
  final String? lastName;
  final String memberID;
  @JsonKey(includeIfNull: false)
  final String? dob;
  @JsonKey(includeIfNull: false)
  final String? ssn;

  SummarySubscriber({
    this.firstName,
    this.lastName,
    required this.memberID,
    this.dob,
    this.ssn,
  });

  factory SummarySubscriber.fromJson(Map<String, dynamic> json) =>
      _$SummarySubscriberFromJson(json);

  Map<String, dynamic> toJson() => _$SummarySubscriberToJson(this);
}

@JsonSerializable()
class Dependent {
  @JsonKey(includeIfNull: false)
  final SummaryPatient? patient;
  @JsonKey(includeIfNull: false)
  final String? relationWithSubscriber;
  Dependent({
    this.patient,
    this.relationWithSubscriber,
  });

  factory Dependent.fromJson(Map<String, dynamic> json) =>
      _$DependentFromJson(json);

  Map<String, dynamic> toJson() => _$DependentToJson(this);
}

@JsonSerializable()
class SummaryPatient {
  @JsonKey(includeIfNull: false)
  final String? firstName;
  @JsonKey(includeIfNull: false)
  final String? middleName;
  @JsonKey(includeIfNull: false)
  final String? lastName;
  @JsonKey(includeIfNull: false)
  final String? dob;
  @JsonKey(includeIfNull: false)
  final String? gender;

  SummaryPatient({
    this.firstName,
    this.middleName,
    this.lastName,
    this.dob,
    this.gender,
  });

  factory SummaryPatient.fromJson(Map<String, dynamic> json) =>
      _$SummaryPatientFromJson(json);

  Map<String, dynamic> toJson() => _$SummaryPatientToJson(this);
}
