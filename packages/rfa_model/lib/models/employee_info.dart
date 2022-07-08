// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'employee_info.freezed.dart';
part 'employee_info.g.dart';

@freezed
class EmployeeInfo with _$EmployeeInfo {
  EmployeeInfo._();

  factory EmployeeInfo({
    String? name,
    @JsonKey(name: 'date_of_injury') DateTime? dateOfInjury,
    @JsonKey(name: 'date_of_birth') DateTime? datetOfBirth,
    @JsonKey(name: 'claim_number') String? claimNumber,
    String? employer,
  }) = _EmployeeInfo;

  factory EmployeeInfo.fromJson(Map<String, dynamic> json) =>
      _$EmployeeInfoFromJson(json);
}
