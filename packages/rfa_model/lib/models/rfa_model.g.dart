// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rfa_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RFAModel _$$_RFAModelFromJson(Map<String, dynamic> json) => _$_RFAModel(
      newRequest: json['new_request'] as bool? ?? true,
      resubmission: json['resubmission'] as bool? ?? false,
      expeditedReview: json['expedited_review'] as bool? ?? false,
      writtenConfirmationOfOralRequest:
          json['written_confirmation_of_oral_request'] as bool?,
      employeeInfo: json['employee_info'] == null
          ? null
          : EmployeeInfo.fromJson(
              json['employee_info'] as Map<String, dynamic>),
      physicianInfo: json['physician_info'] == null
          ? null
          : RequestingPhysician.fromJson(
              json['physician_info'] as Map<String, dynamic>),
      claimsAdministrator: json['claims_administrator'] == null
          ? null
          : ClaimsAdministrator.fromJson(
              json['claims_administrator'] as Map<String, dynamic>),
      claimsResponse: json['claims_response'] == null
          ? null
          : ClaimsResponse.fromJson(
              json['claims_response'] as Map<String, dynamic>),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      deletedAt: json['deleted_at'] == null
          ? null
          : DateTime.parse(json['deleted_at'] as String),
      requestedTreatment: (json['requested_treatment'] as List<dynamic>?)
          ?.map((e) => RequestedTreatment.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_RFAModelToJson(_$_RFAModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('new_request', instance.newRequest);
  writeNotNull('resubmission', instance.resubmission);
  writeNotNull('expedited_review', instance.expeditedReview);
  writeNotNull('written_confirmation_of_oral_request',
      instance.writtenConfirmationOfOralRequest);
  writeNotNull('employee_info', instance.employeeInfo?.toJson());
  writeNotNull('physician_info', instance.physicianInfo?.toJson());
  writeNotNull('claims_administrator', instance.claimsAdministrator?.toJson());
  writeNotNull('claims_response', instance.claimsResponse?.toJson());
  writeNotNull('created_at', instance.createdAt?.toIso8601String());
  writeNotNull('updated_at', instance.updatedAt?.toIso8601String());
  writeNotNull('deleted_at', instance.deletedAt?.toIso8601String());
  writeNotNull('requested_treatment',
      instance.requestedTreatment?.map((e) => e.toJson()).toList());
  return val;
}
