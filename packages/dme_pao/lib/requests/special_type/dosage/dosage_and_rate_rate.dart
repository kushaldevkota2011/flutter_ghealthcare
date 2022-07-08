// ignore_for_file: invalid_annotation_target

part of 'dosage.dart';

@freezed
class DosageAndRateRate with _$DosageAndRateRate {
  DosageAndRateRate._();

  factory DosageAndRateRate({
    CodeableConcept? type,
    @JsonKey(name: 'Range') Range? range,
    @JsonKey(name: 'Quantity') Quantity? quantity,
  }) = _DosageAndRateRate;

  factory DosageAndRateRate.fromJson(Map<String, dynamic> json) =>
      _$DosageAndRateRateFromJson(json);
}
