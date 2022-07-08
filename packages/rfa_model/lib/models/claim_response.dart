// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'claim_response.freezed.dart';
part 'claim_response.g.dart';

@freezed
class ClaimsResponse with _$ClaimsResponse {
  ClaimsResponse._();

  factory ClaimsResponse({
    String? status,
    @JsonKey(name: 'authorization_number') String? authorizationNumber,
    DateTime? date,
    @JsonKey(name: 'authorized_agent_name') String? authorizedAgentName,
    String? phone,
    @JsonKey(name: 'fax_number') String? faxNumber,
    String? email,
    String? comments,
  }) = _ClaimsResponse;

  factory ClaimsResponse.fromJson(Map<String, dynamic> json) =>
      _$ClaimsResponseFromJson(json);
}
