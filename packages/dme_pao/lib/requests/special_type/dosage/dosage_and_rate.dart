part of 'dosage.dart';

@freezed
class DosageAndRate with _$DosageAndRate {
  DosageAndRate._();

  factory DosageAndRate({
    CodeableConcept? type,
    DosageAndRateDosage? dose,
    DosageAndRateRate? rate,
  }) = _DosageAndRate;

  factory DosageAndRate.fromJson(Map<String, dynamic> json) =>
      _$DosageAndRateFromJson(json);
}
