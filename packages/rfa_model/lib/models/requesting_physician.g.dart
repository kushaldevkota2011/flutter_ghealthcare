// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'requesting_physician.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RequestingPhysician _$$_RequestingPhysicianFromJson(
        Map<String, dynamic> json) =>
    _$_RequestingPhysician(
      name: json['name'] as String?,
      practiceName: json['practice_name'] as String?,
      contactName: json['contact_name'] as String?,
      address: json['address'] as String?,
      city: json['city'] as String?,
      state: json['state'] as String?,
      zipCode: json['zip_code'] as String?,
      phone: json['phone'] as String?,
      faxNumber: json['fax_number'] as String?,
      specialty: json['specialty'] as String?,
      npiNumber: json['NPI_number'] as String?,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$$_RequestingPhysicianToJson(
    _$_RequestingPhysician instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('practice_name', instance.practiceName);
  writeNotNull('contact_name', instance.contactName);
  writeNotNull('address', instance.address);
  writeNotNull('city', instance.city);
  writeNotNull('state', instance.state);
  writeNotNull('zip_code', instance.zipCode);
  writeNotNull('phone', instance.phone);
  writeNotNull('fax_number', instance.faxNumber);
  writeNotNull('specialty', instance.specialty);
  writeNotNull('NPI_number', instance.npiNumber);
  writeNotNull('email', instance.email);
  return val;
}
