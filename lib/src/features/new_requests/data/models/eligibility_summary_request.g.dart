// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'eligibility_summary_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EligibilitySummaryRequest _$EligibilitySummaryRequestFromJson(
        Map<String, dynamic> json) =>
    EligibilitySummaryRequest(
      payerCode: json['payerCode'] as String,
      payerName: json['payerName'] as String,
      provider: Provider.fromJson(json['provider'] as Map<String, dynamic>),
      subscriber: SummarySubscriber.fromJson(
          json['subscriber'] as Map<String, dynamic>),
      isSubscriberPatient: json['isSubscriberPatient'] as String,
      doS_StartDate: json['doS_StartDate'] as String,
      doS_EndDate: json['doS_EndDate'] as String,
      dependent: json['dependent'] == null
          ? null
          : Dependent.fromJson(json['dependent'] as Map<String, dynamic>),
      practiceTypeCode: json['PracticeTypeCode'] as String?,
      includeTextResponse: json['IncludeTextResponse'] as String?,
      referenceId: json['referenceId'] as String?,
      location: json['Location'] as String?,
      internalId: json['InternalId'] as String?,
      customerId: json['CustomerID'] as String?,
    );

Map<String, dynamic> _$EligibilitySummaryRequestToJson(
    EligibilitySummaryRequest instance) {
  final val = <String, dynamic>{
    'payerCode': instance.payerCode,
    'payerName': instance.payerName,
    'provider': instance.provider.toJson(),
    'subscriber': instance.subscriber.toJson(),
    'isSubscriberPatient': instance.isSubscriberPatient,
    'doS_StartDate': instance.doS_StartDate,
    'doS_EndDate': instance.doS_EndDate,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('dependent', instance.dependent?.toJson());
  writeNotNull('PracticeTypeCode', instance.practiceTypeCode);
  writeNotNull('IncludeTextResponse', instance.includeTextResponse);
  writeNotNull('referenceId', instance.referenceId);
  writeNotNull('Location', instance.location);
  writeNotNull('InternalId', instance.internalId);
  writeNotNull('CustomerID', instance.customerId);
  return val;
}

Provider _$ProviderFromJson(Map<String, dynamic> json) => Provider(
      firstName: json['firstName'] as String?,
      middleName: json['middleName'] as String?,
      lastName: json['lastName'] as String,
      npi: json['npi'] as String,
      pin: json['pin'] as String?,
      taxonomy: json['taxonomy'] as String?,
    );

Map<String, dynamic> _$ProviderToJson(Provider instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('firstName', instance.firstName);
  writeNotNull('middleName', instance.middleName);
  val['lastName'] = instance.lastName;
  val['npi'] = instance.npi;
  writeNotNull('pin', instance.pin);
  writeNotNull('taxonomy', instance.taxonomy);
  return val;
}

SummarySubscriber _$SummarySubscriberFromJson(Map<String, dynamic> json) =>
    SummarySubscriber(
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      memberID: json['memberID'] as String,
      dob: json['dob'] as String?,
      ssn: json['ssn'] as String?,
    );

Map<String, dynamic> _$SummarySubscriberToJson(SummarySubscriber instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('firstName', instance.firstName);
  writeNotNull('lastName', instance.lastName);
  val['memberID'] = instance.memberID;
  writeNotNull('dob', instance.dob);
  writeNotNull('ssn', instance.ssn);
  return val;
}

Dependent _$DependentFromJson(Map<String, dynamic> json) => Dependent(
      patient: json['patient'] == null
          ? null
          : SummaryPatient.fromJson(json['patient'] as Map<String, dynamic>),
      relationWithSubscriber: json['relationWithSubscriber'] as String?,
    );

Map<String, dynamic> _$DependentToJson(Dependent instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('patient', instance.patient?.toJson());
  writeNotNull('relationWithSubscriber', instance.relationWithSubscriber);
  return val;
}

SummaryPatient _$SummaryPatientFromJson(Map<String, dynamic> json) =>
    SummaryPatient(
      firstName: json['firstName'] as String?,
      middleName: json['middleName'] as String?,
      lastName: json['lastName'] as String?,
      dob: json['dob'] as String?,
      gender: json['gender'] as String?,
    );

Map<String, dynamic> _$SummaryPatientToJson(SummaryPatient instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('firstName', instance.firstName);
  writeNotNull('middleName', instance.middleName);
  writeNotNull('lastName', instance.lastName);
  writeNotNull('dob', instance.dob);
  writeNotNull('gender', instance.gender);
  return val;
}
