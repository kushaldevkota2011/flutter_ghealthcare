// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'concept.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RConcept _$$_RConceptFromJson(Map<String, dynamic> json) => _$_RConcept(
      id: json['id'] == null ? null : Id.fromJson(json['id']),
      code: json['code'] == null ? null : Code.fromJson(json['code']),
      system: json['system'] == null ? null : FhirUri.fromJson(json['system']),
      display: json['display'] as String?,
      meta: json['meta'] == null
          ? null
          : Meta.fromJson(json['meta'] as Map<String, dynamic>),
      valueset: (json['valueset'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_RConceptToJson(_$_RConcept instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('code', instance.code?.toJson());
  writeNotNull('system', instance.system?.toJson());
  writeNotNull('display', instance.display);
  writeNotNull('meta', instance.meta?.toJson());
  writeNotNull('valueset', instance.valueset);
  return val;
}
