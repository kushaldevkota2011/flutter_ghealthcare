// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employee_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EmployeeInfo _$$_EmployeeInfoFromJson(Map<String, dynamic> json) =>
    _$_EmployeeInfo(
      name: json['name'] as String?,
      dateOfInjury: json['date_of_injury'] == null
          ? null
          : DateTime.parse(json['date_of_injury'] as String),
      datetOfBirth: json['date_of_birth'] == null
          ? null
          : DateTime.parse(json['date_of_birth'] as String),
      claimNumber: json['claim_number'] as String?,
      employer: json['employer'] as String?,
    );

Map<String, dynamic> _$$_EmployeeInfoToJson(_$_EmployeeInfo instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('date_of_injury', instance.dateOfInjury?.toIso8601String());
  writeNotNull('date_of_birth', instance.datetOfBirth?.toIso8601String());
  writeNotNull('claim_number', instance.claimNumber);
  writeNotNull('employer', instance.employer);
  return val;
}
