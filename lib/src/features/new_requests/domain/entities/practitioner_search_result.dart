import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'practitioner_search_result.g.dart';

@JsonSerializable()
class PractitionerSearchResult extends Equatable {
  @JsonKey(name: 'enumaration_type')
  final String? enumarationType;
  final int? number;
  @JsonKey(name: 'last_updated_epoch')
  final int? lastUpdatedEpoch;
  @JsonKey(name: 'created_epoch')
  final int? createdEpoch;
  final PractitionerSearchResultBasic? basic;
  @JsonKey(name: 'other_name')
  final List<dynamic>? otherNames;
  final List<PractitionerSearchResultAddress>? addresses;
  final List<PractitionerSearchResultTaxonomy>? taxonomies;
  final List<PractitionerSearchResultIdentifier>? identifiers;

  const PractitionerSearchResult({
    this.enumarationType,
    this.number,
    this.lastUpdatedEpoch,
    this.createdEpoch,
    this.basic,
    this.otherNames,
    this.addresses,
    this.taxonomies,
    this.identifiers,
  });

  factory PractitionerSearchResult.fromJson(Map<String, dynamic> json) =>
      _$PractitionerSearchResultFromJson(json);

  Map<String, dynamic> toJson() => _$PractitionerSearchResultToJson(this);

  @override
  List<Object?> get props => [
        enumarationType,
        number,
        lastUpdatedEpoch,
        createdEpoch,
        basic,
        otherNames,
        addresses,
        taxonomies,
        identifiers
      ];
}

// "organization_name": "GLOBAL HEALTH INFORMATION TECHNOLOGY LLC",
// "organizational_subpart": "NO",
// "enumeration_date": "2021-04-02",
// "authorized_official_first_name": "RAVI",
// "authorized_official_last_name": "KAFLE",
// "authorized_official_middle_name": "KIRAN",
// "authorized_official_telephone_number": "916-415-8774",
// "authorized_official_title_or_position": "OWNER",
// "name": "GLOBAL HEALTH INFORMATION TECHNOLOGY LLC",
// "certification_date": "2021-08-03",
// "authorized_official_name_prefix": "MR."

@JsonSerializable()
class PractitionerSearchResultBasic extends Equatable {
  @JsonKey(name: 'organization_name')
  final String? organizationName;
  @JsonKey(name: 'organizational_subpart')
  final String? organizationalSubpart;
  @JsonKey(name: 'authorized_official_first_name')
  final String? authorizedOfficialFirstName;
  @JsonKey(name: 'authorized_official_last_name')
  final String? authorizedOfficialLastName;
  @JsonKey(name: 'authorized_official_middle_name')
  final String? authorizedOfficialMiddleName;
  @JsonKey(name: 'authorized_official_telephone_number')
  final String? authorizedOfficialTelephoneNumber;
  @JsonKey(name: 'authorized_official_title_or_position')
  final String? authorizedOfficialTitleOrPosition;

  @JsonKey(name: 'name_prefix')
  final String? namePrefix;
  @JsonKey(name: 'first_name')
  final String? firstName;
  @JsonKey(name: 'last_name')
  final String? lastName;
  @JsonKey(name: 'middle_name')
  final String? middleName;
  final String? credential;
  @JsonKey(name: 'sole_properietor')
  final String? soleProperietor;
  final String? gender;
  @JsonKey(name: 'enumaration_date')
  final DateTime? enumarationDate;
  @JsonKey(name: 'last_updated')
  final DateTime? lastUpdated;
  final String? status;
  final String? name;

  const PractitionerSearchResultBasic({
    this.organizationName,
    this.organizationalSubpart,
    this.authorizedOfficialFirstName,
    this.authorizedOfficialLastName,
    this.authorizedOfficialMiddleName,
    this.authorizedOfficialTelephoneNumber,
    this.authorizedOfficialTitleOrPosition,
    this.namePrefix,
    this.firstName,
    this.lastName,
    this.middleName,
    this.credential,
    this.soleProperietor,
    this.gender,
    this.enumarationDate,
    this.lastUpdated,
    this.status,
    this.name,
  });

  factory PractitionerSearchResultBasic.fromJson(Map<String, dynamic> json) =>
      _$PractitionerSearchResultBasicFromJson(json);

  Map<String, dynamic> toJson() => _$PractitionerSearchResultBasicToJson(this);

  @override
  List<Object?> get props => [
        namePrefix,
        firstName,
        lastName,
        middleName,
        credential,
        soleProperietor,
        gender,
        enumarationDate,
        lastUpdated,
        status,
        name,
        organizationName,
        organizationalSubpart,
        authorizedOfficialFirstName,
        authorizedOfficialLastName,
        authorizedOfficialMiddleName,
        authorizedOfficialTelephoneNumber,
        authorizedOfficialTitleOrPosition,
      ];
}

@JsonSerializable()
class PractitionerSearchResultAddress extends Equatable {
  @JsonKey(name: 'country_code')
  final String? countryCode;
  @JsonKey(name: 'country_name')
  final String? countryName;
  @JsonKey(name: 'address_purpose')
  final String? addressPurpose;
  @JsonKey(name: 'address_type')
  final String? addressType;
  @JsonKey(name: 'address_1')
  final String? address1;
  @JsonKey(name: 'address_2')
  final String? address2;

  final String? city;
  final String? state;
  @JsonKey(name: 'postal_code')
  final String? postalCode;
  @JsonKey(name: 'telephone_number')
  final String? telephoneNumber;
  @JsonKey(name: 'fax_number')
  final String? faxNumber;

  const PractitionerSearchResultAddress({
    this.countryCode,
    this.countryName,
    this.addressPurpose,
    this.addressType,
    this.address1,
    this.address2,
    this.city,
    this.state,
    this.postalCode,
    this.telephoneNumber,
    this.faxNumber,
  });

  factory PractitionerSearchResultAddress.fromJson(Map<String, dynamic> json) =>
      _$PractitionerSearchResultAddressFromJson(json);

  Map<String, dynamic> toJson() =>
      _$PractitionerSearchResultAddressToJson(this);

  @override
  List<Object?> get props => [
        countryCode,
        countryName,
        addressPurpose,
        addressType,
        address1,
        address2,
        city,
        state,
        postalCode,
        telephoneNumber,
        faxNumber
      ];
}

@JsonSerializable()
class PractitionerSearchResultTaxonomy extends Equatable {
  final String? code;
  final String? desc;
  final bool? primary;
  final String? state;

  const PractitionerSearchResultTaxonomy({
    this.code,
    this.desc,
    this.primary,
    this.state,
  });

  factory PractitionerSearchResultTaxonomy.fromJson(
          Map<String, dynamic> json) =>
      _$PractitionerSearchResultTaxonomyFromJson(json);

  Map<String, dynamic> toJson() =>
      _$PractitionerSearchResultTaxonomyToJson(this);

  @override
  List<Object?> get props => [code, desc, primary, state];
}

@JsonSerializable()
class PractitionerSearchResultIdentifier extends Equatable {
  final String? identifier;
  final String? code;
  final String? desc;
  final String? state;
  final String? issuer;

  const PractitionerSearchResultIdentifier({
    this.identifier,
    this.code,
    this.desc,
    this.state,
    this.issuer,
  });

  factory PractitionerSearchResultIdentifier.fromJson(
          Map<String, dynamic> json) =>
      _$PractitionerSearchResultIdentifierFromJson(json);

  Map<String, dynamic> toJson() =>
      _$PractitionerSearchResultIdentifierToJson(this);

  @override
  List<Object?> get props => [identifier, code, desc, state, issuer];
}

//  "organization_name": "GHEIT",
//                    "code": "3",
//                    "type": "Doing Business As"

@JsonSerializable()
class PractitionerSearchResultOtherNames extends Equatable {
  @JsonKey(name: 'organization_name')
  final String? organizationName;
  final String? code;
  final String? type;

  const PractitionerSearchResultOtherNames(
      {this.code, this.organizationName, this.type});

  factory PractitionerSearchResultOtherNames.fromJson(
          Map<String, dynamic> json) =>
      _$PractitionerSearchResultOtherNamesFromJson(json);

  Map<String, dynamic> toJson() =>
      _$PractitionerSearchResultOtherNamesToJson(this);

  @override
  List<Object?> get props => [];
}
