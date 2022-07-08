import 'package:fhir/r5.dart' hide Dosage;
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dosage_and_rate.dart';
part 'dosage_and_rate_dosage.dart';
part 'dosage_and_rate_rate.dart';
part 'as_needed.dart';

part 'dosage.freezed.dart';
part 'dosage.g.dart';

@freezed
class Dosage with _$Dosage {
  Dosage._();

  factory Dosage({
    Integer? sequance,
    String? text,
    List<CodeableConcept>? additionalInstruction,
    String? patientInstruction,
    Timing? timing,
    AsNeeded? asNeeded,
    CodeableConcept? site,
    CodeableConcept? route,
    CodeableConcept? methode,
    List<DosageAndRate>? doseAndRate,
    Ratio? maxDosePerPeriod,
    Quantity? maxDosePerAdministration,
    Quantity? maxDosePerLifetime,
  }) = _Dosage;

  factory Dosage.fromJson(Map<String, dynamic> json) => _$DosageFromJson(json);
}
