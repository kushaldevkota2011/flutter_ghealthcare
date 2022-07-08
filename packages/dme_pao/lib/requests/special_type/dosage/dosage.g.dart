// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dosage.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Dosage _$$_DosageFromJson(Map<String, dynamic> json) => _$_Dosage(
      sequance:
          json['sequance'] == null ? null : Integer.fromJson(json['sequance']),
      text: json['text'] as String?,
      additionalInstruction: (json['additionalInstruction'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      patientInstruction: json['patientInstruction'] as String?,
      timing: json['timing'] == null
          ? null
          : Timing.fromJson(json['timing'] as Map<String, dynamic>),
      asNeeded: json['asNeeded'] == null
          ? null
          : AsNeeded.fromJson(json['asNeeded'] as Map<String, dynamic>),
      site: json['site'] == null
          ? null
          : CodeableConcept.fromJson(json['site'] as Map<String, dynamic>),
      route: json['route'] == null
          ? null
          : CodeableConcept.fromJson(json['route'] as Map<String, dynamic>),
      methode: json['methode'] == null
          ? null
          : CodeableConcept.fromJson(json['methode'] as Map<String, dynamic>),
      doseAndRate: (json['doseAndRate'] as List<dynamic>?)
          ?.map((e) => DosageAndRate.fromJson(e as Map<String, dynamic>))
          .toList(),
      maxDosePerPeriod: json['maxDosePerPeriod'] == null
          ? null
          : Ratio.fromJson(json['maxDosePerPeriod'] as Map<String, dynamic>),
      maxDosePerAdministration: json['maxDosePerAdministration'] == null
          ? null
          : Quantity.fromJson(
              json['maxDosePerAdministration'] as Map<String, dynamic>),
      maxDosePerLifetime: json['maxDosePerLifetime'] == null
          ? null
          : Quantity.fromJson(
              json['maxDosePerLifetime'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DosageToJson(_$_Dosage instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('sequance', instance.sequance?.toJson());
  writeNotNull('text', instance.text);
  writeNotNull('additionalInstruction',
      instance.additionalInstruction?.map((e) => e.toJson()).toList());
  writeNotNull('patientInstruction', instance.patientInstruction);
  writeNotNull('timing', instance.timing?.toJson());
  writeNotNull('asNeeded', instance.asNeeded?.toJson());
  writeNotNull('site', instance.site?.toJson());
  writeNotNull('route', instance.route?.toJson());
  writeNotNull('methode', instance.methode?.toJson());
  writeNotNull(
      'doseAndRate', instance.doseAndRate?.map((e) => e.toJson()).toList());
  writeNotNull('maxDosePerPeriod', instance.maxDosePerPeriod?.toJson());
  writeNotNull(
      'maxDosePerAdministration', instance.maxDosePerAdministration?.toJson());
  writeNotNull('maxDosePerLifetime', instance.maxDosePerLifetime?.toJson());
  return val;
}

_$_DosageAndRate _$$_DosageAndRateFromJson(Map<String, dynamic> json) =>
    _$_DosageAndRate(
      type: json['type'] == null
          ? null
          : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
      dose: json['dose'] == null
          ? null
          : DosageAndRateDosage.fromJson(json['dose'] as Map<String, dynamic>),
      rate: json['rate'] == null
          ? null
          : DosageAndRateRate.fromJson(json['rate'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DosageAndRateToJson(_$_DosageAndRate instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('type', instance.type?.toJson());
  writeNotNull('dose', instance.dose?.toJson());
  writeNotNull('rate', instance.rate?.toJson());
  return val;
}

_$_DosageAndRateDosage _$$_DosageAndRateDosageFromJson(
        Map<String, dynamic> json) =>
    _$_DosageAndRateDosage(
      ratio: json['Ratio'] == null
          ? null
          : Ratio.fromJson(json['Ratio'] as Map<String, dynamic>),
      range: json['Range'] == null
          ? null
          : Range.fromJson(json['Range'] as Map<String, dynamic>),
      quantity: json['Quantity'] == null
          ? null
          : Quantity.fromJson(json['Quantity'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DosageAndRateDosageToJson(
    _$_DosageAndRateDosage instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('Ratio', instance.ratio?.toJson());
  writeNotNull('Range', instance.range?.toJson());
  writeNotNull('Quantity', instance.quantity?.toJson());
  return val;
}

_$_DosageAndRateRate _$$_DosageAndRateRateFromJson(Map<String, dynamic> json) =>
    _$_DosageAndRateRate(
      type: json['type'] == null
          ? null
          : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
      range: json['Range'] == null
          ? null
          : Range.fromJson(json['Range'] as Map<String, dynamic>),
      quantity: json['Quantity'] == null
          ? null
          : Quantity.fromJson(json['Quantity'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DosageAndRateRateToJson(
    _$_DosageAndRateRate instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('type', instance.type?.toJson());
  writeNotNull('Range', instance.range?.toJson());
  writeNotNull('Quantity', instance.quantity?.toJson());
  return val;
}

_$_AsNeeded _$$_AsNeededFromJson(Map<String, dynamic> json) => _$_AsNeeded(
      boolean:
          json['Boolean'] == null ? null : Boolean.fromJson(json['Boolean']),
      codeableConcept: json['CodeableConcept'] == null
          ? null
          : CodeableConcept.fromJson(
              json['CodeableConcept'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AsNeededToJson(_$_AsNeeded instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('Boolean', instance.boolean?.toJson());
  writeNotNull('CodeableConcept', instance.codeableConcept?.toJson());
  return val;
}
