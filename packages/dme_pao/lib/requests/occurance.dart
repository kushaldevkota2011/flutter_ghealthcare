import 'package:fhir/r5.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'occurance.freezed.dart';
part 'occurance.g.dart';

@freezed
class Occurrence with _$Occurrence {
  Occurrence._();

  factory Occurrence({
    FhirDateTime? dateTime,
    Period? period,
    Timing? timing,
  }) = _Occurrence;

  factory Occurrence.fromJson(Map<String, dynamic> json) =>
      _$OccurrenceFromJson(json);
}
