// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:fhir/r5.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'patient_enum.dart';

part 'patient.freezed.dart';
part 'patient.g.dart';

@freezed
class RPatient with Resource, _$RPatient {
  RPatient._();

  /// [usCoreEthnicity] for this field use the [extensionFromEthnicity] Map
  /// . Which will map's the key and returns the [FhirExtension]
  ///
  /// e.g
  ///  ```
  ///    usCoreEthnicity = extensionFromEthinicty[PatientUsCoreEthnicity.hispanic_or_latino]
  ///  ```
  ///
  /// same is for [usCoreRace],[usCoreBirthSex], [usCoreGenderIdentity]-> in future
  factory RPatient({
    @Default(R5ResourceType.Patient)
    @JsonKey(unknownEnumValue: R5ResourceType.Patient)
        R5ResourceType resourceType,
    Id? id,
    Meta? meta,
    FhirUri? implicitRules,
    @JsonKey(name: '_implicitRules') Element? implicitRulesElement,
    Code? language,
    @JsonKey(name: '_language') Element? languageElement,
    Narrative? text,
    List<Resource>? contained,
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    Boolean? active,
    @JsonKey(name: '_active') Element? activeElement,
    List<HumanName>? name,
    List<ContactPoint>? telecom,
    @JsonKey(unknownEnumValue: PatientGender.other) PatientGender? gender,
    @JsonKey(name: '_gender') Element? genderElement,
    Date? birthDate,
    @JsonKey(name: '_birthDate') Element? birthDateElement,
    Boolean? deceasedBoolean,
    @JsonKey(name: '_deceasedBoolean') Element? deceasedBooleanElement,
    FhirDateTime? deceasedDateTime,
    @JsonKey(name: '_deceasedDateTime') Element? deceasedDateTimeElement,
    List<Address>? address,
    CodeableConcept? maritalStatus,
    Boolean? multipleBirthBoolean,
    @JsonKey(name: '_multipleBirthBoolean')
        Element? multipleBirthBooleanElement,
    Integer? multipleBirthInteger,
    @JsonKey(name: '_multipleBirthInteger')
        Element? multipleBirthIntegerElement,
    List<Attachment>? photo,
    List<PatientContact>? contact,
    List<PatientCommunication>? communication,
    List<Reference>? generalPractitioner,
    Reference? managingOrganization,
    List<PatientLink>? link,
    RUsCoreEthnicity? ethnicity,
    RUsCoreRace? race,
    RDeceased? deceased,
    @JsonKey(name: 'birthsex') String? birthSex,
    RMultipleBirth? multipleBirth,
  }) = _RPatient;

  factory RPatient.fromJson(Map<String, dynamic> json) =>
      _$RPatientFromJson(json);

  factory RPatient.fromJsonString(String source) {
    final json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$RPatientFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  /// this constructor will also add the [PatientSexualOrientation] and
  /// [PatientUsCoreGenderIdentity]
  factory RPatient.patientUsCore({
    Id? id,
    Meta? meta,
    Narrative? text,
    List<FhirExtension>? extension_,
    required List<Identifier> identifier,
    Boolean? active,
    required List<HumanName> name,
    List<ContactPoint>? telecom,
    required PatientGender gender,
    Date? birthDate,
    List<Address>? address,
    List<PatientCommunication>? communication,
    Element? activeElement,
    Element? birthDateElement,
    List<PatientContact>? contact,
    List<Resource>? contained,
    Boolean? deceasedBoolean,
    Element? deceasedBooleanElement,
    FhirDateTime? deceasedDateTime,
    Element? deceasedDateTimeElement,
    Element? genderElement,
    List<Reference>? generalPractitioner,
    FhirUri? implicitRules,
    R5ResourceType resourceType = R5ResourceType.Patient,
    List<Attachment>? photo,
    Element? multipleBirthIntegerElement,
    Integer? multipleBirthInteger,
    Element? multipleBirthBooleanElement,
    CodeableConcept? maritalStatus,
    Boolean? multipleBirthBoolean,
    List<FhirExtension>? modifierExtension,
    Reference? managingOrganization,
    List<PatientLink>? link,
    Element? languageElement,
    Code? language,
    Element? implicitRulesElement,
    PatientUsCoreRace? usCoreRace,
    List<PatientUsCoreDetailedRace>? usCoreDetailedRace,
    FhirExtension? usCoreRaceText,
    PatientUsCoreEthnicity? usCoreEthnicity,
    List<PatientUsCoreDetailedEthnicity>? usCoreDetailedEthnicity,
    FhirExtension? usCoreEthnicityText,
    PatientUsCoreBirthSex? usCoreBirthSex,
    PatientSexualOrientation? sexualOrientation,
    PatientUsCoreGenderIdentity? usCoreGenderIdentity,
  }) {
    final extension_ = <FhirExtension>[];
    // if (usCoreRace != null ||
    //     usCoreDetailedRace != null ||
    //     usCoreRaceText != null) {
    //   final raceExtension = FhirExtension(
    //     extension_: <FhirExtension>[
    //       if (usCoreRace != null) extensionFromRace[usCoreRace]!,
    //       if (usCoreDetailedRace != null)
    //         for (final detailedRace in usCoreDetailedRace)
    //           extensionFromDetailedRace[detailedRace]!,
    //       if (usCoreRaceText != null) usCoreRaceText,
    //     ],
    //     url: FhirUri(
    //         'http://hl7.org/fhir/us/core/StructureDefinition/us-core-race'),
    //   );

    //   extension_.add(raceExtension);
    // }

    // if (usCoreEthnicity != null ||
    //     usCoreDetailedEthnicity != null ||
    //     usCoreEthnicityText != null) {
    //   final ethnicityExtension = FhirExtension(
    //     extension_: <FhirExtension>[
    //       if (usCoreEthnicity != null) extensionFromEthnicity[usCoreEthnicity]!,
    //       if (usCoreDetailedEthnicity != null)
    //         for (final detailedEthnicity in usCoreDetailedEthnicity)
    //           extensionFromDetailedEthnicity[detailedEthnicity]!,
    //       if (usCoreEthnicityText != null) usCoreEthnicityText,
    //     ],
    //     url: FhirUri(
    //         'http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity'),
    //   );

    //   extension_.add(ethnicityExtension);
    // }

    // if (usCoreBirthSex != null) {
    //   extension_.add(extensionFromBirthSex[usCoreBirthSex]!);
    // }

    if (usCoreGenderIdentity != null) {
      extension_.add(
        extensionFromGenderIdentity[usCoreGenderIdentity]!,
      );
    }

    if (sexualOrientation != null) {
      extension_.add(extensionFromSexualOrientation[sexualOrientation]!);
    }

    if (usCoreEthnicity != null) {}

    return RPatient(
      active: active,
      activeElement: activeElement,
      address: address,
      birthDate: birthDate,
      birthDateElement: birthDateElement,
      communication: communication,
      contact: contact,
      contained: contained,
      deceasedBoolean: deceasedBoolean,
      deceasedBooleanElement: deceasedBooleanElement,
      deceasedDateTime: deceasedDateTime,
      deceasedDateTimeElement: deceasedDateTimeElement,
      extension_: extension_,
      gender: gender,
      genderElement: genderElement,
      generalPractitioner: generalPractitioner,
      id: id,
      identifier: identifier
        ..add(
          Identifier(value: "value", system: FhirUri("value")),
        ),
      implicitRules: implicitRules,
      implicitRulesElement: implicitRulesElement,
      language: language,
      languageElement: languageElement,
      link: link,
      managingOrganization: managingOrganization,
      maritalStatus: maritalStatus,
      meta: meta ??
          Meta(
              lastUpdated: Instant(DateTime.now().toIso8601String()),
              extension_: [
                FhirExtension(
                    url: FhirUri('ex:createdAt'),
                    valueDateTime:
                        FhirDateTime(DateTime.now().toIso8601String()))
              ],
              profile: [
                Canonical(
                    "http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient")
              ]),
      modifierExtension: modifierExtension,
      multipleBirthBoolean: multipleBirthBoolean,
      multipleBirthBooleanElement: multipleBirthBooleanElement,
      multipleBirthInteger: multipleBirthInteger,
      multipleBirthIntegerElement: multipleBirthIntegerElement,
      name: name,
      photo: photo,
      resourceType: resourceType,
      telecom: telecom,
      text: text,
      ethnicity: usCoreEthnicity != null
          ? extensionFromEthnicity2[usCoreEthnicity]
          : null,
      race: usCoreRace != null ? extensionFromRace2[usCoreRace] : null,
      birthSex: usCoreBirthSex != null
          ? extensionFromBirthSex2[usCoreBirthSex]
          : null,
    );
  }
}

@freezed
class RUsCoreEthnicity with _$RUsCoreEthnicity {
  RUsCoreEthnicity._();

  factory RUsCoreEthnicity({
    Coding? ombCategory,
    required String text,
    List<Code>? detailed,
  }) = _RUsCoreEthinicity;

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory RUsCoreEthnicity.fromJson(Map<String, dynamic> json) =>
      _$RUsCoreEthnicityFromJson(json);
}

@freezed
class RUsCoreRace with _$RUsCoreRace {
  RUsCoreRace._();

  factory RUsCoreRace({
    List<Coding>? ombCategory,
    required String text,
    List<Coding>? detailed,
  }) = _RUsCoreRace;

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory RUsCoreRace.fromJson(Map<String, dynamic> json) =>
      _$RUsCoreRaceFromJson(json);
}

@freezed
class RMultipleBirth with _$RMultipleBirth {
  RMultipleBirth._();

  factory RMultipleBirth({
    bool? boolean,
    int? integer,
  }) = _RMultipleBirth;

  factory RMultipleBirth.fromJson(Map<String, dynamic> json) =>
      _$RMultipleBirthFromJson(json);
}

@freezed
class RDeceased with _$RDeceased {
  RDeceased._();

  factory RDeceased({
    bool? boolean,
    FhirDateTime? dateTime,
  }) = _RDeceased;

  factory RDeceased.fromJson(Map<String, dynamic> json) =>
      _$RDeceasedFromJson(json);
}
