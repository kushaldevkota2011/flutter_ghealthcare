// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:fhir/r5.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'practitioner.freezed.dart';
part 'practitioner.g.dart';

@freezed
class RPractitioner with Resource, _$RPractitioner {
  RPractitioner._();

  factory RPractitioner({
    @Default(R5ResourceType.Practitioner) R5ResourceType resourceType,
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
    Boolean? deceasedBoolean,
    @JsonKey(name: '_deceasedBoolean') Element? deceasedBooleanElement,
    FhirDateTime? deceasedDateTime,
    @JsonKey(name: '_deceasedDateTime') Element? deceasedDateTimeElement,
    List<Address>? address,
    Code? gender,
    @JsonKey(name: '_gender') Element? genderElement,
    Date? birthDate,
    @JsonKey(name: '_birthDate') Element? birthDateElement,
    List<Attachment>? photo,
    List<PractitionerQualification>? qualification,
    List<CodeableConcept>? communication,
  }) = _RPractitioner;

  factory RPractitioner.usCore({
    R5ResourceType resourceType = R5ResourceType.Practitioner,
    Id? id,
    Meta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    Code? language,
    Element? languageElement,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    required List<Identifier> identifier,
    Boolean? active,
    Element? activeElement,
    required List<HumanName> name,
    List<ContactPoint>? telecom,
    Boolean? deceasedBoolean,
    Element? deceasedBooleanElement,
    FhirDateTime? deceasedDateTime,
    Element? deceasedDateTimeElement,
    List<Address>? address,
    Code? gender,
    Element? genderElement,
    Date? birthDate,
    Element? birthDateElement,
    List<Attachment>? photo,
    List<PractitionerQualification>? qualification,
    List<CodeableConcept>? communication,
    int? npiNumber,
  }) {
    if (npiNumber != null) {
      identifier.add(Identifier(
          system: FhirUri('http://hl7.org.fhir/sid/us-npi'),
          value: '$npiNumber'));
    }
    if (identifier.isEmpty) {
      identifier.add(
        Identifier(system: FhirUri('testing'), value: 'value'),
      );
    }
    return RPractitioner(
      active: active,
      activeElement: activeElement,
      address: address,
      birthDate: birthDate,
      birthDateElement: birthDateElement,
      communication: communication,
      contained: contained,
      deceasedBoolean: deceasedBoolean,
      deceasedBooleanElement: deceasedBooleanElement,
      deceasedDateTime: deceasedDateTime,
      deceasedDateTimeElement: deceasedDateTimeElement,
      extension_: extension_,
      gender: gender,
      genderElement: genderElement,
      id: id,
      identifier: identifier,
      implicitRules: implicitRules,
      implicitRulesElement: implicitRulesElement,
      language: language,
      languageElement: languageElement,
      meta: meta ??
          Meta(
            profile: [
              Canonical(
                  "http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner"),
            ],
          ),
      modifierExtension: modifierExtension,
      name: name,
      photo: photo,
      qualification: qualification,
      resourceType: resourceType,
      telecom: telecom,
      text: text,
    );
  }

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory RPractitioner.fromJson(Map<String, dynamic> json) =>
      _$RPractitionerFromJson(json);

  /// Acts like a constructor, returns a [Practitioner], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory RPractitioner.fromJsonString(String source) {
    final json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$RPractitionerFromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}

final data = Practitioner();
