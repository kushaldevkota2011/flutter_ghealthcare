// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'claim_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ClaimsResponse _$$_ClaimsResponseFromJson(Map<String, dynamic> json) =>
    _$_ClaimsResponse(
      status: json['status'] as String?,
      authorizationNumber: json['authorization_number'] as String?,
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      authorizedAgentName: json['authorized_agent_name'] as String?,
      phone: json['phone'] as String?,
      faxNumber: json['fax_number'] as String?,
      email: json['email'] as String?,
      comments: json['comments'] as String?,
    );

Map<String, dynamic> _$$_ClaimsResponseToJson(_$_ClaimsResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('status', instance.status);
  writeNotNull('authorization_number', instance.authorizationNumber);
  writeNotNull('date', instance.date?.toIso8601String());
  writeNotNull('authorized_agent_name', instance.authorizedAgentName);
  writeNotNull('phone', instance.phone);
  writeNotNull('fax_number', instance.faxNumber);
  writeNotNull('email', instance.email);
  writeNotNull('comments', instance.comments);
  return val;
}
