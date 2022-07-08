// ignore_for_file: invalid_annotation_target

part of 'dosage.dart';

@freezed
class AsNeeded with _$AsNeeded {
  AsNeeded._();
  factory AsNeeded({
    @JsonKey(name: "Boolean") Boolean? boolean,
    @JsonKey(name: "CodeableConcept") CodeableConcept? codeableConcept,
  }) = _AsNeeded;

  factory AsNeeded.fromJson(Map<String, dynamic> json) =>
      _$AsNeededFromJson(json);
}
