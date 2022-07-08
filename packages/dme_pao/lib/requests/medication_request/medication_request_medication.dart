// ignore_for_file: invalid_annotation_target

part of 'medication_request.dart';

@freezed
class MedicationRequestMedication with _$MedicationRequestMedication {
  MedicationRequestMedication._();

  factory MedicationRequestMedication({
    Reference? reference,
    @JsonKey(name: "CodeableConcept") CodeableConcept? codeableConcept,
  }) = _MedicationRequestMedication;

  factory MedicationRequestMedication.fromJson(Map<String, dynamic> json) =>
      _$MedicationRequestMedicationFromJson(json);
}
