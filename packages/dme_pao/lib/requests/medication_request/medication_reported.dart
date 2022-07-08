part of 'medication_request.dart';

@freezed
class MedicationReported with _$MedicationReported {
  MedicationReported._();

  factory MedicationReported({
    Boolean? boolean,
    Reference? reference,
  }) = _MedicationReported;

  factory MedicationReported.fromJson(Map<String, dynamic> json) =>
      _$MedicationReportedFromJson(json);
}
