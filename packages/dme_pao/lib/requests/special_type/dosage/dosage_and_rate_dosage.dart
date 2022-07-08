// ignore_for_file: invalid_annotation_target

part of 'dosage.dart';

@freezed
class DosageAndRateDosage with _$DosageAndRateDosage {
  DosageAndRateDosage._();

  factory DosageAndRateDosage(
      {@JsonKey(name: 'Ratio') Ratio? ratio,
      @JsonKey(name: 'Range') Range? range,
      @JsonKey(name: 'Quantity') Quantity? quantity}) = _DosageAndRateDosage;

  factory DosageAndRateDosage.fromJson(Map<String, dynamic> json) =>
      _$DosageAndRateDosageFromJson(json);
}
