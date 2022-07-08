// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'practitioner_search_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PractitionerSearchResult _$PractitionerSearchResultFromJson(
        Map<String, dynamic> json) =>
    PractitionerSearchResult(
      enumarationType: json['enumaration_type'] as String?,
      number: json['number'] as int?,
      lastUpdatedEpoch: json['last_updated_epoch'] as int?,
      createdEpoch: json['created_epoch'] as int?,
      basic: json['basic'] == null
          ? null
          : PractitionerSearchResultBasic.fromJson(
              json['basic'] as Map<String, dynamic>),
      otherNames: json['other_name'] as List<dynamic>?,
      addresses: (json['addresses'] as List<dynamic>?)
          ?.map((e) => PractitionerSearchResultAddress.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      taxonomies: (json['taxonomies'] as List<dynamic>?)
          ?.map((e) => PractitionerSearchResultTaxonomy.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      identifiers: (json['identifiers'] as List<dynamic>?)
          ?.map((e) => PractitionerSearchResultIdentifier.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PractitionerSearchResultToJson(
    PractitionerSearchResult instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('enumaration_type', instance.enumarationType);
  writeNotNull('number', instance.number);
  writeNotNull('last_updated_epoch', instance.lastUpdatedEpoch);
  writeNotNull('created_epoch', instance.createdEpoch);
  writeNotNull('basic', instance.basic?.toJson());
  writeNotNull('other_name', instance.otherNames);
  writeNotNull(
      'addresses', instance.addresses?.map((e) => e.toJson()).toList());
  writeNotNull(
      'taxonomies', instance.taxonomies?.map((e) => e.toJson()).toList());
  writeNotNull(
      'identifiers', instance.identifiers?.map((e) => e.toJson()).toList());
  return val;
}

PractitionerSearchResultBasic _$PractitionerSearchResultBasicFromJson(
        Map<String, dynamic> json) =>
    PractitionerSearchResultBasic(
      organizationName: json['organization_name'] as String?,
      organizationalSubpart: json['organizational_subpart'] as String?,
      authorizedOfficialFirstName:
          json['authorized_official_first_name'] as String?,
      authorizedOfficialLastName:
          json['authorized_official_last_name'] as String?,
      authorizedOfficialMiddleName:
          json['authorized_official_middle_name'] as String?,
      authorizedOfficialTelephoneNumber:
          json['authorized_official_telephone_number'] as String?,
      authorizedOfficialTitleOrPosition:
          json['authorized_official_title_or_position'] as String?,
      namePrefix: json['name_prefix'] as String?,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      middleName: json['middle_name'] as String?,
      credential: json['credential'] as String?,
      soleProperietor: json['sole_properietor'] as String?,
      gender: json['gender'] as String?,
      enumarationDate: json['enumaration_date'] == null
          ? null
          : DateTime.parse(json['enumaration_date'] as String),
      lastUpdated: json['last_updated'] == null
          ? null
          : DateTime.parse(json['last_updated'] as String),
      status: json['status'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$PractitionerSearchResultBasicToJson(
    PractitionerSearchResultBasic instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('organization_name', instance.organizationName);
  writeNotNull('organizational_subpart', instance.organizationalSubpart);
  writeNotNull(
      'authorized_official_first_name', instance.authorizedOfficialFirstName);
  writeNotNull(
      'authorized_official_last_name', instance.authorizedOfficialLastName);
  writeNotNull(
      'authorized_official_middle_name', instance.authorizedOfficialMiddleName);
  writeNotNull('authorized_official_telephone_number',
      instance.authorizedOfficialTelephoneNumber);
  writeNotNull('authorized_official_title_or_position',
      instance.authorizedOfficialTitleOrPosition);
  writeNotNull('name_prefix', instance.namePrefix);
  writeNotNull('first_name', instance.firstName);
  writeNotNull('last_name', instance.lastName);
  writeNotNull('middle_name', instance.middleName);
  writeNotNull('credential', instance.credential);
  writeNotNull('sole_properietor', instance.soleProperietor);
  writeNotNull('gender', instance.gender);
  writeNotNull('enumaration_date', instance.enumarationDate?.toIso8601String());
  writeNotNull('last_updated', instance.lastUpdated?.toIso8601String());
  writeNotNull('status', instance.status);
  writeNotNull('name', instance.name);
  return val;
}

PractitionerSearchResultAddress _$PractitionerSearchResultAddressFromJson(
        Map<String, dynamic> json) =>
    PractitionerSearchResultAddress(
      countryCode: json['country_code'] as String?,
      countryName: json['country_name'] as String?,
      addressPurpose: json['address_purpose'] as String?,
      addressType: json['address_type'] as String?,
      address1: json['address_1'] as String?,
      address2: json['address_2'] as String?,
      city: json['city'] as String?,
      state: json['state'] as String?,
      postalCode: json['postal_code'] as String?,
      telephoneNumber: json['telephone_number'] as String?,
      faxNumber: json['fax_number'] as String?,
    );

Map<String, dynamic> _$PractitionerSearchResultAddressToJson(
    PractitionerSearchResultAddress instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('country_code', instance.countryCode);
  writeNotNull('country_name', instance.countryName);
  writeNotNull('address_purpose', instance.addressPurpose);
  writeNotNull('address_type', instance.addressType);
  writeNotNull('address_1', instance.address1);
  writeNotNull('address_2', instance.address2);
  writeNotNull('city', instance.city);
  writeNotNull('state', instance.state);
  writeNotNull('postal_code', instance.postalCode);
  writeNotNull('telephone_number', instance.telephoneNumber);
  writeNotNull('fax_number', instance.faxNumber);
  return val;
}

PractitionerSearchResultTaxonomy _$PractitionerSearchResultTaxonomyFromJson(
        Map<String, dynamic> json) =>
    PractitionerSearchResultTaxonomy(
      code: json['code'] as String?,
      desc: json['desc'] as String?,
      primary: json['primary'] as bool?,
      state: json['state'] as String?,
    );

Map<String, dynamic> _$PractitionerSearchResultTaxonomyToJson(
    PractitionerSearchResultTaxonomy instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', instance.code);
  writeNotNull('desc', instance.desc);
  writeNotNull('primary', instance.primary);
  writeNotNull('state', instance.state);
  return val;
}

PractitionerSearchResultIdentifier _$PractitionerSearchResultIdentifierFromJson(
        Map<String, dynamic> json) =>
    PractitionerSearchResultIdentifier(
      identifier: json['identifier'] as String?,
      code: json['code'] as String?,
      desc: json['desc'] as String?,
      state: json['state'] as String?,
      issuer: json['issuer'] as String?,
    );

Map<String, dynamic> _$PractitionerSearchResultIdentifierToJson(
    PractitionerSearchResultIdentifier instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('identifier', instance.identifier);
  writeNotNull('code', instance.code);
  writeNotNull('desc', instance.desc);
  writeNotNull('state', instance.state);
  writeNotNull('issuer', instance.issuer);
  return val;
}

PractitionerSearchResultOtherNames _$PractitionerSearchResultOtherNamesFromJson(
        Map<String, dynamic> json) =>
    PractitionerSearchResultOtherNames(
      code: json['code'] as String?,
      organizationName: json['organization_name'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$PractitionerSearchResultOtherNamesToJson(
    PractitionerSearchResultOtherNames instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('organization_name', instance.organizationName);
  writeNotNull('code', instance.code);
  writeNotNull('type', instance.type);
  return val;
}
