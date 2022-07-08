// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'occurance.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Occurrence _$$_OccurrenceFromJson(Map<String, dynamic> json) =>
    _$_Occurrence(
      dateTime: json['dateTime'] == null
          ? null
          : FhirDateTime.fromJson(json['dateTime']),
      period: json['period'] == null
          ? null
          : Period.fromJson(json['period'] as Map<String, dynamic>),
      timing: json['timing'] == null
          ? null
          : Timing.fromJson(json['timing'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_OccurrenceToJson(_$_Occurrence instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('dateTime', instance.dateTime?.toJson());
  writeNotNull('period', instance.period?.toJson());
  writeNotNull('timing', instance.timing?.toJson());
  return val;
}
