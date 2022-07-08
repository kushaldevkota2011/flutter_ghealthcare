// ignore_for_file: non_constant_identifier_names

import 'package:json_annotation/json_annotation.dart';

part 'eligibility_inquiry.g.dart';

@JsonSerializable()
class EligibilityInquiry {
  int? elgRequestID;
  String? status;
  String? payerName;
  String? payerCode;
  String? verificationType;

  /// boolean	False - Non-EDI payer. True - EDI Payer
  String? isPayerBackOffice;

  /// 	String	Status of the verification - Processed, pending, etc - See Table below
  String? verificationStatus;
  String? verificationMessage;
  bool? processedWithError;

  /// 	String	Date of Service (Expected format: MM/dd/YYYY ie 01/01/2000)
  String? dos;
  String? plan;
  String? exceptionNotes;
  String? additionalInformation;
  String? ediErrorMessage;
  String? errorCode;
  String? errorDescription;
  String? otherMessage;
  String? reportURL;
  String? doB_R;
  EligibilityPeriod? eligibilityPeriod;

  Demographics? demographicInfo;

  String? relationship;
  List<NetworkSection>? networkSections;
  HealthBenefitPlanCoverageServiceType? healthBenefitPlanCoverageServiceType;

  List<ServiceType>? servicesTypes;
  bool? isHMOPlan;
  String? internalId;
  String? customerId;
  String? detailsURL;
  bool? isProviderInNetwork;
  int? recursiveRequestId;
  String? recursiveAPIResponseCode;
  String? recursiveAPIResponseMessage;

  EligibilityInquiry({
    this.elgRequestID,
    this.status,
    this.payerName,
    this.payerCode,
    this.verificationType,
    this.isPayerBackOffice,
    this.verificationStatus,
    this.verificationMessage,
    this.processedWithError,
    this.dos,
    this.plan,
    this.exceptionNotes,
    this.additionalInformation,
    this.ediErrorMessage,
    this.errorCode,
    this.errorDescription,
    this.otherMessage,
    this.reportURL,
    this.doB_R,
    this.eligibilityPeriod,
    this.demographicInfo,
    this.relationship,
    this.networkSections,
    this.healthBenefitPlanCoverageServiceType,
    this.servicesTypes,
    this.isHMOPlan,
    this.internalId,
    this.customerId,
    this.detailsURL,
    this.isProviderInNetwork,
    this.recursiveRequestId,
    this.recursiveAPIResponseCode,
    this.recursiveAPIResponseMessage,
  });

  factory EligibilityInquiry.fromJson(Map<String, dynamic> json) =>
      _$EligibilityInquiryFromJson(json);
  Map<String, dynamic> toJson() => _$EligibilityInquiryToJson(this);
}

@JsonSerializable()
class EligibilityPeriod {
  String? effectiveFromDate;
  String? expiredOnDate;
  String? label;
  EligibilityPeriod({
    this.effectiveFromDate,
    this.expiredOnDate,
    this.label,
  });

  factory EligibilityPeriod.fromJson(Map<String, dynamic> json) =>
      _$EligibilityPeriodFromJson(json);
  Map<String, dynamic> toJson() => _$EligibilityPeriodToJson(this);
}

@JsonSerializable()
class Demographics {
  Subscriber? subscriber;
  Subscriber? dependent;
  Demographics({
    this.subscriber,
    this.dependent,
  });

  factory Demographics.fromJson(Map<String, dynamic> json) =>
      _$DemographicsFromJson(json);
  Map<String, dynamic> toJson() => _$DemographicsToJson(this);
}

@JsonSerializable()
class Subscriber {
  String? address1;
  String? address2;
  String? city;
  String? state;
  String? zip;
  String? doB_R;
  String? firstname;
  String? lastname;
  String? gender_R;
  String? middlename;
  String? lastname_R;
  List<Identification>? identification;
  String? fullName;
  String? suffix;
  Subscriber({
    this.address1,
    this.address2,
    this.city,
    this.state,
    this.zip,
    this.doB_R,
    this.firstname,
    this.lastname,
    this.gender_R,
    this.middlename,
    this.lastname_R,
    this.identification,
    this.fullName,
    this.suffix,
  });

  factory Subscriber.fromJson(Map<String, dynamic> json) =>
      _$SubscriberFromJson(json);
  Map<String, dynamic> toJson() => _$SubscriberToJson(this);
}

@JsonSerializable()
class Identification {
  String? code;
  String? type;
  String? name;
  Identification({
    this.code,
    this.type,
    this.name,
  });

  factory Identification.fromJson(Map<String, dynamic> json) =>
      _$IdentificationFromJson(json);
  Map<String, dynamic> toJson() => _$IdentificationToJson(this);
}

@JsonSerializable()
class NetworkSection {
  String? identifier;
  String? label;
  List<NetworkParameter>? inNetworkParameters;
  NetworkSection({
    this.identifier,
    this.label,
    this.inNetworkParameters,
  });

  factory NetworkSection.fromJson(Map<String, dynamic> json) =>
      _$NetworkSectionFromJson(json);
  Map<String, dynamic> toJson() => _$NetworkSectionToJson(this);
}

@JsonSerializable()
class NetworkParameter {
  String? key;
  String? value;
  String? message;
  dynamic otherInfo;
  NetworkParameter({
    this.key,
    this.value,
    this.message,
    required this.otherInfo,
  });

  factory NetworkParameter.fromJson(Map<String, dynamic> json) =>
      _$NetworkParameterFromJson(json);
  Map<String, dynamic> toJson() => _$NetworkParameterToJson(this);
}

@JsonSerializable()
class HealthBenefitPlanCoverageServiceType {
  String? serviceTypeName;
  List<ServiceTypeSection>? serviceTypeSections;
  HealthBenefitPlanCoverageServiceType({
    this.serviceTypeName,
    this.serviceTypeSections,
  });

  factory HealthBenefitPlanCoverageServiceType.fromJson(
          Map<String, dynamic> json) =>
      _$HealthBenefitPlanCoverageServiceTypeFromJson(json);
  Map<String, dynamic> toJson() =>
      _$HealthBenefitPlanCoverageServiceTypeToJson(this);
}

@JsonSerializable()
class ServiceType {
  String? serviceTypeName;
  List<ServiceTypeSection>? serviceTypeSections;
  ServiceType({
    this.serviceTypeName,
    this.serviceTypeSections,
  });

  factory ServiceType.fromJson(Map<String, dynamic> json) =>
      _$ServiceTypeFromJson(json);
  Map<String, dynamic> toJson() => _$ServiceTypeToJson(this);
}

@JsonSerializable()
class ServiceTypeSection {
  String? label;
  List<ServiceParameter>? serviceParameters;
  ServiceTypeSection({
    this.label,
    this.serviceParameters,
  });

  factory ServiceTypeSection.fromJson(Map<String, dynamic> json) =>
      _$ServiceTypeSectionFromJson(json);
  Map<String, dynamic> toJson() => _$ServiceTypeSectionToJson(this);
}

@JsonSerializable()
class ServiceParameter {
  String? key;
  String? value;
  dynamic message;
  List<OtherInfo>? otherinfo;
  ServiceParameter({
    this.key,
    this.value,
    required this.message,
    this.otherinfo,
  });

  factory ServiceParameter.fromJson(Map<String, dynamic> json) =>
      _$ServiceParameterFromJson(json);
  Map<String, dynamic> toJson() => _$ServiceParameterToJson(this);
}

@JsonSerializable()
class OtherInfo {
  String? key;
  String? value;
  dynamic message;
  List<OtherInfo>? otherInfo;
  OtherInfo({
    this.key,
    this.value,
    required this.message,
    this.otherInfo,
  });
  factory OtherInfo.fromJson(Map<String, dynamic> json) =>
      _$OtherInfoFromJson(json);
  Map<String, dynamic> toJson() => _$OtherInfoToJson(this);
}
