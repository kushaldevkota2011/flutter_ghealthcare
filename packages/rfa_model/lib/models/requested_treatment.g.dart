// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'requested_treatment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RequestedTreatment _$$_RequestedTreatmentFromJson(
        Map<String, dynamic> json) =>
    _$_RequestedTreatment(
      diagnosis: json['diagnosis'] as String?,
      icdCode: json['icd_code'] as String?,
      serviceRequested: json['service_requested'] as String?,
      cptOrHcpcsCode: json['cpt_or_hcpcs_code'] as String?,
      otherInformation: json['other_information'] as String?,
    );

Map<String, dynamic> _$$_RequestedTreatmentToJson(
    _$_RequestedTreatment instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('diagnosis', instance.diagnosis);
  writeNotNull('icd_code', instance.icdCode);
  writeNotNull('service_requested', instance.serviceRequested);
  writeNotNull('cpt_or_hcpcs_code', instance.cptOrHcpcsCode);
  writeNotNull('other_information', instance.otherInformation);
  return val;
}
