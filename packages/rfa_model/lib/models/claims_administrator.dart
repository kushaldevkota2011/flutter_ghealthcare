// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'claims_administrator.freezed.dart';
part 'claims_administrator.g.dart';

@freezed
class ClaimsAdministrator with _$ClaimsAdministrator {
  ClaimsAdministrator._();

  factory ClaimsAdministrator({
    @JsonKey(name: 'company_name') String? companyName,
    @JsonKey(name: 'contact_name') String? contactName,
    String? address,
    String? city,
    String? state,
    @JsonKey(name: 'zip_code') String? zipCode,
    String? phone,
    @JsonKey(name: 'fax_number') String? faxNumber,
    String? email,
  }) = _ClaimsAdministrator;

  factory ClaimsAdministrator.fromJson(Map<String, dynamic> json) =>
      _$ClaimsAdministratorFromJson(json);
}
