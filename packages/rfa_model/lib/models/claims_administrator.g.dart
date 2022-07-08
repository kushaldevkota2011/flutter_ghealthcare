// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'claims_administrator.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ClaimsAdministrator _$$_ClaimsAdministratorFromJson(
        Map<String, dynamic> json) =>
    _$_ClaimsAdministrator(
      companyName: json['company_name'] as String?,
      contactName: json['contact_name'] as String?,
      address: json['address'] as String?,
      city: json['city'] as String?,
      state: json['state'] as String?,
      zipCode: json['zip_code'] as String?,
      phone: json['phone'] as String?,
      faxNumber: json['fax_number'] as String?,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$$_ClaimsAdministratorToJson(
    _$_ClaimsAdministrator instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('company_name', instance.companyName);
  writeNotNull('contact_name', instance.contactName);
  writeNotNull('address', instance.address);
  writeNotNull('city', instance.city);
  writeNotNull('state', instance.state);
  writeNotNull('zip_code', instance.zipCode);
  writeNotNull('phone', instance.phone);
  writeNotNull('fax_number', instance.faxNumber);
  writeNotNull('email', instance.email);
  return val;
}
