import 'package:fhir/r5.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'concept.freezed.dart';
part 'concept.g.dart';

@freezed
class RConcept with _$RConcept {
  RConcept._();

  factory RConcept({
    Id? id,
    Code? code,
    FhirUri? system,
    String? display,
    Meta? meta,
    List<String>? valueset,
  }) = _RConcept;

  factory RConcept.fromJson(Map<String, dynamic> json) =>
      _$RConceptFromJson(json);
}
