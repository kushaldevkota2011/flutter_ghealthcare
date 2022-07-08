// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:fhir/r5.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'organization.freezed.dart';
part 'organization.g.dart';

@freezed
class ROrganization with Resource, _$ROrganization {
  ROrganization._();

  factory ROrganization({
    @Default(R5ResourceType.Organization) R5ResourceType resourceType,
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
    List<CodeableConcept>? type,
    String? name,
    @JsonKey(name: '_name') Element? nameElement,
    List<String>? alias,
    @JsonKey(name: '_alias') List<Element>? aliasElement,
    String? description,
    @JsonKey(name: '_description') Element? descriptionElement,
    List<ExtendedContactDetail>? contact,
    List<ContactPoint>? telecom,
    List<Address>? address,
    Reference? partOf,
    List<Reference>? endpoint,
  }) = _ROrganization;

  factory ROrganization.usCore({
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
    List<CodeableConcept>? type,
    required String name,
    Element? nameElement,
    List<String>? alias,
    List<Element>? aliasElement,
    String? description,
    Element? descriptionElement,
    List<ExtendedContactDetail>? contact,
    List<ContactPoint>? telecom,
    List<Address>? address,
    Reference? partOf,
    List<Reference>? endpoint,
    int? npiNumber,
    String? cliaNumber,
  }) {
    if (npiNumber != null) {
      identifier.add(Identifier(
          system: FhirUri('http://hl7.org.fhir/sid/us-npi'),
          value: '$npiNumber'));
    }

    if (cliaNumber != null) {
      identifier.add(
        Identifier(
          system: FhirUri('urn:oid:2.16.840.1.113883.4.7'),
          value: cliaNumber,
        ),
      );
    }

    return ROrganization(
      active: active ?? Boolean(false),
      activeElement: activeElement,
      address: address,
      alias: alias,
      aliasElement: aliasElement,
      contact: contact,
      contained: contained,
      description: description,
      descriptionElement: descriptionElement,
      endpoint: endpoint,
      extension_: extension_,
      id: id,
      identifier: identifier,
      implicitRules: implicitRules,
      implicitRulesElement: implicitRulesElement,
      language: language,
      languageElement: languageElement,
      meta: meta ??
          Meta(profile: [
            Canonical(
                "http://hl7.org/fhir/us/core/StructureDefinition/us-core-organization"),
          ]),
      modifierExtension: modifierExtension,
      name: name,
      nameElement: nameElement,
      partOf: partOf,
      resourceType: R5ResourceType.Organization,
      telecom: telecom,
      text: text,
      type: type,
    );
  }

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory ROrganization.fromJson(Map<String, dynamic> json) =>
      _$ROrganizationFromJson(json);

  /// Acts like a constructor, returns a [Organization], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory ROrganization.fromJsonString(String source) {
    final json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ROrganizationFromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}
