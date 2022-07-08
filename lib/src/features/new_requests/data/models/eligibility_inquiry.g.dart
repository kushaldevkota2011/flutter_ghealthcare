// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'eligibility_inquiry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EligibilityInquiry _$EligibilityInquiryFromJson(Map<String, dynamic> json) =>
    EligibilityInquiry(
      elgRequestID: json['elgRequestID'] as int?,
      status: json['status'] as String?,
      payerName: json['payerName'] as String?,
      payerCode: json['payerCode'] as String?,
      verificationType: json['verificationType'] as String?,
      isPayerBackOffice: json['isPayerBackOffice'] as String?,
      verificationStatus: json['verificationStatus'] as String?,
      verificationMessage: json['verificationMessage'] as String?,
      processedWithError: json['processedWithError'] as bool?,
      dos: json['dos'] as String?,
      plan: json['plan'] as String?,
      exceptionNotes: json['exceptionNotes'] as String?,
      additionalInformation: json['additionalInformation'] as String?,
      ediErrorMessage: json['ediErrorMessage'] as String?,
      errorCode: json['errorCode'] as String?,
      errorDescription: json['errorDescription'] as String?,
      otherMessage: json['otherMessage'] as String?,
      reportURL: json['reportURL'] as String?,
      doB_R: json['doB_R'] as String?,
      eligibilityPeriod: json['eligibilityPeriod'] == null
          ? null
          : EligibilityPeriod.fromJson(
              json['eligibilityPeriod'] as Map<String, dynamic>),
      demographicInfo: json['demographicInfo'] == null
          ? null
          : Demographics.fromJson(
              json['demographicInfo'] as Map<String, dynamic>),
      relationship: json['relationship'] as String?,
      networkSections: (json['networkSections'] as List<dynamic>?)
          ?.map((e) => NetworkSection.fromJson(e as Map<String, dynamic>))
          .toList(),
      healthBenefitPlanCoverageServiceType:
          json['healthBenefitPlanCoverageServiceType'] == null
              ? null
              : HealthBenefitPlanCoverageServiceType.fromJson(
                  json['healthBenefitPlanCoverageServiceType']
                      as Map<String, dynamic>),
      servicesTypes: (json['servicesTypes'] as List<dynamic>?)
          ?.map((e) => ServiceType.fromJson(e as Map<String, dynamic>))
          .toList(),
      isHMOPlan: json['isHMOPlan'] as bool?,
      internalId: json['internalId'] as String?,
      customerId: json['customerId'] as String?,
      detailsURL: json['detailsURL'] as String?,
      isProviderInNetwork: json['isProviderInNetwork'] as bool?,
      recursiveRequestId: json['recursiveRequestId'] as int?,
      recursiveAPIResponseCode: json['recursiveAPIResponseCode'] as String?,
      recursiveAPIResponseMessage:
          json['recursiveAPIResponseMessage'] as String?,
    );

Map<String, dynamic> _$EligibilityInquiryToJson(EligibilityInquiry instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('elgRequestID', instance.elgRequestID);
  writeNotNull('status', instance.status);
  writeNotNull('payerName', instance.payerName);
  writeNotNull('payerCode', instance.payerCode);
  writeNotNull('verificationType', instance.verificationType);
  writeNotNull('isPayerBackOffice', instance.isPayerBackOffice);
  writeNotNull('verificationStatus', instance.verificationStatus);
  writeNotNull('verificationMessage', instance.verificationMessage);
  writeNotNull('processedWithError', instance.processedWithError);
  writeNotNull('dos', instance.dos);
  writeNotNull('plan', instance.plan);
  writeNotNull('exceptionNotes', instance.exceptionNotes);
  writeNotNull('additionalInformation', instance.additionalInformation);
  writeNotNull('ediErrorMessage', instance.ediErrorMessage);
  writeNotNull('errorCode', instance.errorCode);
  writeNotNull('errorDescription', instance.errorDescription);
  writeNotNull('otherMessage', instance.otherMessage);
  writeNotNull('reportURL', instance.reportURL);
  writeNotNull('doB_R', instance.doB_R);
  writeNotNull('eligibilityPeriod', instance.eligibilityPeriod?.toJson());
  writeNotNull('demographicInfo', instance.demographicInfo?.toJson());
  writeNotNull('relationship', instance.relationship);
  writeNotNull('networkSections',
      instance.networkSections?.map((e) => e.toJson()).toList());
  writeNotNull('healthBenefitPlanCoverageServiceType',
      instance.healthBenefitPlanCoverageServiceType?.toJson());
  writeNotNull(
      'servicesTypes', instance.servicesTypes?.map((e) => e.toJson()).toList());
  writeNotNull('isHMOPlan', instance.isHMOPlan);
  writeNotNull('internalId', instance.internalId);
  writeNotNull('customerId', instance.customerId);
  writeNotNull('detailsURL', instance.detailsURL);
  writeNotNull('isProviderInNetwork', instance.isProviderInNetwork);
  writeNotNull('recursiveRequestId', instance.recursiveRequestId);
  writeNotNull('recursiveAPIResponseCode', instance.recursiveAPIResponseCode);
  writeNotNull(
      'recursiveAPIResponseMessage', instance.recursiveAPIResponseMessage);
  return val;
}

EligibilityPeriod _$EligibilityPeriodFromJson(Map<String, dynamic> json) =>
    EligibilityPeriod(
      effectiveFromDate: json['effectiveFromDate'] as String?,
      expiredOnDate: json['expiredOnDate'] as String?,
      label: json['label'] as String?,
    );

Map<String, dynamic> _$EligibilityPeriodToJson(EligibilityPeriod instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('effectiveFromDate', instance.effectiveFromDate);
  writeNotNull('expiredOnDate', instance.expiredOnDate);
  writeNotNull('label', instance.label);
  return val;
}

Demographics _$DemographicsFromJson(Map<String, dynamic> json) => Demographics(
      subscriber: json['subscriber'] == null
          ? null
          : Subscriber.fromJson(json['subscriber'] as Map<String, dynamic>),
      dependent: json['dependent'] == null
          ? null
          : Subscriber.fromJson(json['dependent'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DemographicsToJson(Demographics instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('subscriber', instance.subscriber?.toJson());
  writeNotNull('dependent', instance.dependent?.toJson());
  return val;
}

Subscriber _$SubscriberFromJson(Map<String, dynamic> json) => Subscriber(
      address1: json['address1'] as String?,
      address2: json['address2'] as String?,
      city: json['city'] as String?,
      state: json['state'] as String?,
      zip: json['zip'] as String?,
      doB_R: json['doB_R'] as String?,
      firstname: json['firstname'] as String?,
      lastname: json['lastname'] as String?,
      gender_R: json['gender_R'] as String?,
      middlename: json['middlename'] as String?,
      lastname_R: json['lastname_R'] as String?,
      identification: (json['identification'] as List<dynamic>?)
          ?.map((e) => Identification.fromJson(e as Map<String, dynamic>))
          .toList(),
      fullName: json['fullName'] as String?,
      suffix: json['suffix'] as String?,
    );

Map<String, dynamic> _$SubscriberToJson(Subscriber instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('address1', instance.address1);
  writeNotNull('address2', instance.address2);
  writeNotNull('city', instance.city);
  writeNotNull('state', instance.state);
  writeNotNull('zip', instance.zip);
  writeNotNull('doB_R', instance.doB_R);
  writeNotNull('firstname', instance.firstname);
  writeNotNull('lastname', instance.lastname);
  writeNotNull('gender_R', instance.gender_R);
  writeNotNull('middlename', instance.middlename);
  writeNotNull('lastname_R', instance.lastname_R);
  writeNotNull('identification',
      instance.identification?.map((e) => e.toJson()).toList());
  writeNotNull('fullName', instance.fullName);
  writeNotNull('suffix', instance.suffix);
  return val;
}

Identification _$IdentificationFromJson(Map<String, dynamic> json) =>
    Identification(
      code: json['code'] as String?,
      type: json['type'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$IdentificationToJson(Identification instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', instance.code);
  writeNotNull('type', instance.type);
  writeNotNull('name', instance.name);
  return val;
}

NetworkSection _$NetworkSectionFromJson(Map<String, dynamic> json) =>
    NetworkSection(
      identifier: json['identifier'] as String?,
      label: json['label'] as String?,
      inNetworkParameters: (json['inNetworkParameters'] as List<dynamic>?)
          ?.map((e) => NetworkParameter.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$NetworkSectionToJson(NetworkSection instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('identifier', instance.identifier);
  writeNotNull('label', instance.label);
  writeNotNull('inNetworkParameters',
      instance.inNetworkParameters?.map((e) => e.toJson()).toList());
  return val;
}

NetworkParameter _$NetworkParameterFromJson(Map<String, dynamic> json) =>
    NetworkParameter(
      key: json['key'] as String?,
      value: json['value'] as String?,
      message: json['message'] as String?,
      otherInfo: json['otherInfo'],
    );

Map<String, dynamic> _$NetworkParameterToJson(NetworkParameter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('key', instance.key);
  writeNotNull('value', instance.value);
  writeNotNull('message', instance.message);
  writeNotNull('otherInfo', instance.otherInfo);
  return val;
}

HealthBenefitPlanCoverageServiceType
    _$HealthBenefitPlanCoverageServiceTypeFromJson(Map<String, dynamic> json) =>
        HealthBenefitPlanCoverageServiceType(
          serviceTypeName: json['serviceTypeName'] as String?,
          serviceTypeSections: (json['serviceTypeSections'] as List<dynamic>?)
              ?.map(
                  (e) => ServiceTypeSection.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$HealthBenefitPlanCoverageServiceTypeToJson(
    HealthBenefitPlanCoverageServiceType instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('serviceTypeName', instance.serviceTypeName);
  writeNotNull('serviceTypeSections',
      instance.serviceTypeSections?.map((e) => e.toJson()).toList());
  return val;
}

ServiceType _$ServiceTypeFromJson(Map<String, dynamic> json) => ServiceType(
      serviceTypeName: json['serviceTypeName'] as String?,
      serviceTypeSections: (json['serviceTypeSections'] as List<dynamic>?)
          ?.map((e) => ServiceTypeSection.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ServiceTypeToJson(ServiceType instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('serviceTypeName', instance.serviceTypeName);
  writeNotNull('serviceTypeSections',
      instance.serviceTypeSections?.map((e) => e.toJson()).toList());
  return val;
}

ServiceTypeSection _$ServiceTypeSectionFromJson(Map<String, dynamic> json) =>
    ServiceTypeSection(
      label: json['label'] as String?,
      serviceParameters: (json['serviceParameters'] as List<dynamic>?)
          ?.map((e) => ServiceParameter.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ServiceTypeSectionToJson(ServiceTypeSection instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('label', instance.label);
  writeNotNull('serviceParameters',
      instance.serviceParameters?.map((e) => e.toJson()).toList());
  return val;
}

ServiceParameter _$ServiceParameterFromJson(Map<String, dynamic> json) =>
    ServiceParameter(
      key: json['key'] as String?,
      value: json['value'] as String?,
      message: json['message'],
      otherinfo: (json['otherinfo'] as List<dynamic>?)
          ?.map((e) => OtherInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ServiceParameterToJson(ServiceParameter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('key', instance.key);
  writeNotNull('value', instance.value);
  writeNotNull('message', instance.message);
  writeNotNull(
      'otherinfo', instance.otherinfo?.map((e) => e.toJson()).toList());
  return val;
}

OtherInfo _$OtherInfoFromJson(Map<String, dynamic> json) => OtherInfo(
      key: json['key'] as String?,
      value: json['value'] as String?,
      message: json['message'],
      otherInfo: (json['otherInfo'] as List<dynamic>?)
          ?.map((e) => OtherInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$OtherInfoToJson(OtherInfo instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('key', instance.key);
  writeNotNull('value', instance.value);
  writeNotNull('message', instance.message);
  writeNotNull(
      'otherInfo', instance.otherInfo?.map((e) => e.toJson()).toList());
  return val;
}
