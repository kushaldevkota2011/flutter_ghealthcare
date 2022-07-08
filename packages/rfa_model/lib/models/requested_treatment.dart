// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'requested_treatment.freezed.dart';
part 'requested_treatment.g.dart';

@freezed
class RequestedTreatment with _$RequestedTreatment {
  RequestedTreatment._();

  factory RequestedTreatment({
    String? diagnosis,
    @JsonKey(name: 'icd_code') String? icdCode,
    @JsonKey(name: 'service_requested') String? serviceRequested,
    @JsonKey(name: 'cpt_or_hcpcs_code') String? cptOrHcpcsCode,
    @JsonKey(name: 'other_information') String? otherInformation,
  }) = _RequestedTreatment;

  factory RequestedTreatment.fromJson(Map<String, dynamic> json) =>
      _$RequestedTreatmentFromJson(json);
}
