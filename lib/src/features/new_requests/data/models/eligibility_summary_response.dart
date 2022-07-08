// ignore_for_file: non_constant_identifier_names, camel_case_types

import 'package:json_annotation/json_annotation.dart';

part 'eligibility_summary_response.g.dart';

@JsonSerializable()
class EligibilitySummaryResponse {
  final int? RequestID;
  final String? APIResponseCode;
  final String? APIResponseMessage;
  final bool? IsPayerBackOffice;
  final String? PverifyPayerCode;
  final String? PayerName;
  final String? VerificationType;
  final String? DOS;

  final String? ExceptionNotes;
  final bool? IsHMOPlan;
  final String? AddtionalInfo;
  final String? Location;
  final String? ReferrenceId;
  final String? ResultPracticeType;
  final bool? AreAllSTCsProcessed;
  final String? STCsStatusMessage;
  final bool? IsProviderInNetwork;
  final PboDemographicInfo? DemographicInfo;
  final PayersInfo? OtherPayerInfo;
  @JsonKey(name: 'PlanCoverageSummary')
  final PlanCoverageSummary? planCoverageSummary;
  final PCPAuthSummary? PCPAuthInfoSummary;
  final DecductibleAndOOP? HBPC_Deductible_OOP_Summary;
  @JsonKey(name: 'MedicareInfoSummary')
  final MedicareInfoSummary? medicareInfoSummary;
  final Miscellaneous? MiscellaneousInfoSummary;
  final PracticeTypeSummary? DiagnosticLabSummary;
  final PracticeTypeSummary? SpecialistOfficeSummary;
  final PracticeTypeSummary? SurgicalSummary;
  final PracticeTypeSummary? ASC_FacilitySummary;
  final PracticeTypeSummary? OncologySummary;
  final PracticeTypeSummary? DMESummary;
  final PracticeTypeSummary? MentalHealthSummary;
  final PracticeTypeSummary? PrimaryCareSummary;
  final PracticeTypeSummary? MRI_CT_ScanSummary;
  final PracticeTypeSummary? UrgentCareSummary;
  final PracticeTypeSummary? XRaySummary;
  @JsonKey(name: 'OpthalmologySummary')
  final OpthalmologySummary? opthalmologySummary;
  final TherapySummary? PhysicalTherapySummary;
  final TherapySummary? ChiropracticSummary;
  final TherapySummary? SpeechThearySummary;
  final TherapySummary? OccupationalTherapySummary;
  final PracticeTypeSummary? EmergencyMedicalSummary;
  final VisitLimitationsSummary? WellnessOrRoutineVisitSummary;
  final PracticeTypeSummary? PodiatryOfficeSummary;
  final PracticeTypeSummary? OutpatientProfessionalSummary;
  final PracticeTypeSummary? AnesthesiaSummary;
  final PracticeTypeSummary? SubstanceAbuseProfessionalSummary;
  final PracticeTypeSummary? SubstanceAbuseInPatientFacilitySummary;
  final PracticeTypeSummary? SubstanceAbuseOutPatientFacilitySummary;
  final PracticeTypeSummary? FluVaccinationSummary;
  final PracticeTypeSummary? HospitalInpatientSummary;
  final PracticeTypeSummary? PharmacySummary;
  final PracticeTypeSummary? HospitalOutPatientSummary;
  final PracticeTypeSummary? DentalSummary;
  final PracticeTypeSummary? TelemedicinePrimaryCareSummary;
  final PracticeTypeSummary? TelemedicineSpecialistSummary;
  final PracticeTypeSummary? TelemedicineUrgentCareSummary;
  final TherapySummary? TelemedicinePhysicalTherapySummary;
  final PracticeTypeSummary? TelemedicineMentalHealthSummary;
  final PracticeTypeSummary? PsychotherapySummary;
  final String? DisclaimerMessage;
  @JsonKey(name: 'ServiceDetailsList')
  final List<ServiceDetails>? ServiceDetailsList;
  final List<PreventiveService>? PreventiveServices;
  final String? EligibilityResult;
  final String? NonEDIResultPath;

  factory EligibilitySummaryResponse.fromJson(Map<String, dynamic> json) =>
      _$EligibilitySummaryResponseFromJson(json);

  Map<String, dynamic> toJson() => _$EligibilitySummaryResponseToJson(this);

  EligibilitySummaryResponse({
    this.RequestID,
    this.DOS,
    this.APIResponseCode,
    this.APIResponseMessage,
    this.IsPayerBackOffice,
    this.PverifyPayerCode,
    this.PayerName,
    this.VerificationType,
    this.ExceptionNotes,
    this.IsHMOPlan,
    this.AddtionalInfo,
    this.Location,
    this.ReferrenceId,
    this.ResultPracticeType,
    this.AreAllSTCsProcessed,
    this.STCsStatusMessage,
    this.IsProviderInNetwork,
    this.DemographicInfo,
    this.OtherPayerInfo,
    this.planCoverageSummary,
    this.PCPAuthInfoSummary,
    this.HBPC_Deductible_OOP_Summary,
    this.medicareInfoSummary,
    this.MiscellaneousInfoSummary,
    this.DiagnosticLabSummary,
    this.SpecialistOfficeSummary,
    this.SurgicalSummary,
    this.ASC_FacilitySummary,
    this.OncologySummary,
    this.DMESummary,
    this.MentalHealthSummary,
    this.PrimaryCareSummary,
    this.MRI_CT_ScanSummary,
    this.UrgentCareSummary,
    this.XRaySummary,
    this.opthalmologySummary,
    this.PhysicalTherapySummary,
    this.ChiropracticSummary,
    this.SpeechThearySummary,
    this.OccupationalTherapySummary,
    this.EmergencyMedicalSummary,
    this.WellnessOrRoutineVisitSummary,
    this.PodiatryOfficeSummary,
    this.OutpatientProfessionalSummary,
    this.AnesthesiaSummary,
    this.SubstanceAbuseProfessionalSummary,
    this.SubstanceAbuseInPatientFacilitySummary,
    this.SubstanceAbuseOutPatientFacilitySummary,
    this.FluVaccinationSummary,
    this.HospitalInpatientSummary,
    this.PharmacySummary,
    this.HospitalOutPatientSummary,
    this.DentalSummary,
    this.TelemedicinePrimaryCareSummary,
    this.TelemedicineSpecialistSummary,
    this.TelemedicineUrgentCareSummary,
    this.TelemedicinePhysicalTherapySummary,
    this.TelemedicineMentalHealthSummary,
    this.PsychotherapySummary,
    this.DisclaimerMessage,
    this.ServiceDetailsList,
    this.EligibilityResult,
    this.NonEDIResultPath,
    this.PreventiveServices,
  });
}

@JsonSerializable()
class PboDemographicInfo {
  final PboSubscriber? Subscriber;
  final PboDependent? Dependent;

  PboDemographicInfo({
    this.Subscriber,
    this.Dependent,
  });

  factory PboDemographicInfo.fromJson(Map<String, dynamic> json) =>
      _$PboDemographicInfoFromJson(json);

  Map<String, dynamic> toJson() => _$PboDemographicInfoToJson(this);
}

@JsonSerializable()
class DecductibleAndOOP {
  final Details? IndividualDeductibleInNet;
  final Details? IndividualDeductibleOutNet;
  final Details? IndividualDeductibleRemainingInNet;
  final Details? IndividualDeductibleRemainingOutNet;
  final Details? FamilyDeductibleInNet;
  final Details? FamilyDeductibleOutNet;
  final Details? FamilyDeductibleRemainingInNet;
  final Details? FamilyDeductibleRemainingOutNet;
  final Details? IndividualOOP_InNet;
  final Details? IndividualOOP_OutNet;
  final Details? IndividualOOPRemainingInNet;
  final Details? IndividualOOPRemainingOutNet;
  final Details? FamilyOOPInNet;
  final Details? FamilyOOPOutNet;
  final Details? FamilyOOPRemainingInNet;
  final Details? FamilyOOPRemainingOutNet;

  factory DecductibleAndOOP.fromJson(Map<String, dynamic> json) =>
      _$DecductibleAndOOPFromJson(json);

  Map<String, dynamic> toJson() => _$DecductibleAndOOPToJson(this);

  DecductibleAndOOP({
    this.IndividualDeductibleInNet,
    this.IndividualDeductibleOutNet,
    this.IndividualDeductibleRemainingInNet,
    this.IndividualDeductibleRemainingOutNet,
    this.FamilyDeductibleInNet,
    this.FamilyDeductibleOutNet,
    this.FamilyDeductibleRemainingInNet,
    this.FamilyDeductibleRemainingOutNet,
    this.IndividualOOP_InNet,
    this.IndividualOOP_OutNet,
    this.IndividualOOPRemainingInNet,
    this.IndividualOOPRemainingOutNet,
    this.FamilyOOPInNet,
    this.FamilyOOPOutNet,
    this.FamilyOOPRemainingInNet,
    this.FamilyOOPRemainingOutNet,
  });
}

@JsonSerializable()
class PboSubscriber {
  final String? Address1;
  final String? Address2;
  final String? City;
  final List<PboCommunicationType>? CommunicationNumber;
  final List<PboDateType>? Date;
  final String? DOB_R;
  final String? Firstname;
  final String? Gender_R;
  final List<PboIdentificationType>? Identification;
  final String? Lastname_R;
  final String? Middlename;
  final String? State;
  final String? Suffix;
  final String? Zip;
  final PboMilitaryPersonnelInfo? MilitaryPersonnelInfo;
  final String? FullName;

  factory PboSubscriber.fromJson(Map<String, dynamic> json) =>
      _$PboSubscriberFromJson(json);

  Map<String, dynamic> toJson() => _$PboSubscriberToJson(this);

  PboSubscriber({
    this.Address1,
    this.Address2,
    this.City,
    this.CommunicationNumber,
    this.Date,
    this.DOB_R,
    this.Firstname,
    this.Gender_R,
    this.Identification,
    this.Lastname_R,
    this.Middlename,
    this.State,
    this.Suffix,
    this.Zip,
    this.MilitaryPersonnelInfo,
    this.FullName,
  });
}

@JsonSerializable()
class PboDependent {
  final PboSubscriber? DependentInfo;
  final String? Relationship;

  factory PboDependent.fromJson(Map<String, dynamic> json) =>
      _$PboDependentFromJson(json);

  Map<String, dynamic> toJson() => _$PboDependentToJson(this);

  PboDependent({
    this.DependentInfo,
    this.Relationship,
  });
}

@JsonSerializable()
class PboIdentificationType {
  final String? Code;
  final String? Type;
  final String? Name;

  factory PboIdentificationType.fromJson(Map<String, dynamic> json) =>
      _$PboIdentificationTypeFromJson(json);

  Map<String, dynamic> toJson() => _$PboIdentificationTypeToJson(this);

  PboIdentificationType({
    this.Code,
    this.Type,
    this.Name,
  });
}

@JsonSerializable()
class PboCommunicationType {
  final String? Type;
  final String? Name;

  factory PboCommunicationType.fromJson(Map<String, dynamic> json) =>
      _$PboCommunicationTypeFromJson(json);

  Map<String, dynamic> toJson() => _$PboCommunicationTypeToJson(this);

  PboCommunicationType({
    this.Type,
    this.Name,
  });
}

@JsonSerializable()
class PboDateType {
  final String? Type;
  final String? Name;

  factory PboDateType.fromJson(Map<String, dynamic> json) =>
      _$PboDateTypeFromJson(json);

  Map<String, dynamic> toJson() => _$PboDateTypeToJson(this);

  PboDateType({
    this.Type,
    this.Name,
  });
}

@JsonSerializable()
class PboMilitaryPersonnelInfo {
  final String? StatusCode;
  final String? EmploymentStatusCode;
  final String? GovernmentServiceAffiliationCode;
  final String? Description;
  final String? MilitaryServiceRankCode;
  final String? ServiceDate;

  factory PboMilitaryPersonnelInfo.fromJson(Map<String, dynamic> json) =>
      _$PboMilitaryPersonnelInfoFromJson(json);

  Map<String, dynamic> toJson() => _$PboMilitaryPersonnelInfoToJson(this);

  PboMilitaryPersonnelInfo({
    this.StatusCode,
    this.EmploymentStatusCode,
    this.GovernmentServiceAffiliationCode,
    this.Description,
    this.MilitaryServiceRankCode,
    this.ServiceDate,
  });
}

@JsonSerializable()
class Identification_Type {
  final String? Code;
  final String? Type;
  final String? Name;

  factory Identification_Type.fromJson(Map<String, dynamic> json) =>
      _$Identification_TypeFromJson(json);

  Map<String, dynamic> toJson() => _$Identification_TypeToJson(this);

  Identification_Type({
    this.Code,
    this.Type,
    this.Name,
  });
}

@JsonSerializable()
class CommunicationNumberType {
  final String? Number;
  final String? Type;

  factory CommunicationNumberType.fromJson(Map<String, dynamic> json) =>
      _$CommunicationNumberTypeFromJson(json);

  Map<String, dynamic> toJson() => _$CommunicationNumberTypeToJson(this);

  CommunicationNumberType({this.Number, this.Type});
}

@JsonSerializable()
class Date_Type {
  final String? Date;
  final String? Type;

  factory Date_Type.fromJson(Map<String, dynamic> json) =>
      _$Date_TypeFromJson(json);

  Map<String, dynamic> toJson() => _$Date_TypeToJson(this);

  Date_Type({this.Date, this.Type});
}

@JsonSerializable()
class ServiceDetails {
  final String? ServiceName;
  @JsonKey(name: 'EligibilityDetails')
  final List<EligibilityDetails>? EligibilityDetailsList;

  factory ServiceDetails.fromJson(Map<String, dynamic> json) =>
      _$ServiceDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$ServiceDetailsToJson(this);

  ServiceDetails({
    this.ServiceName,
    this.EligibilityDetailsList,
  });
}

@JsonSerializable()
class EligibilityDetails {
  final String? AuthorizationOrCertificationRequired;
  final String? EligibilityOrBenefit;
  final String? CoverageLevel;
  final String? InsuranceType;
  final String? MonetaryAmount;
  final String? Percent;
  final String? PlanCoverageDescription;
  final String? PlanNetworkIndicator;
  final String? QuantityQualifier;
  final String? Quantity;
  final String? TimePeriodQualifier;
  final String? Procedure;
  final String? PlaceOfService;
  final List<Date_Type>? Date;
  final List<String>? Message;
  final List<Identification_Type>? Identifications;
  final List<EDI271EligibilityBenefitEntity>? BenefitEntities;
  final List<EDI271HealthCareServiveDelivery>? HealthCareServiceDeliveries;

  factory EligibilityDetails.fromJson(Map<String, dynamic> json) =>
      _$EligibilityDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$EligibilityDetailsToJson(this);

  EligibilityDetails({
    this.AuthorizationOrCertificationRequired,
    this.EligibilityOrBenefit,
    this.CoverageLevel,
    this.InsuranceType,
    this.MonetaryAmount,
    this.Percent,
    this.PlanCoverageDescription,
    this.PlanNetworkIndicator,
    this.QuantityQualifier,
    this.Quantity,
    this.TimePeriodQualifier,
    this.Procedure,
    this.PlaceOfService,
    this.Date,
    this.Message,
    this.Identifications,
    this.BenefitEntities,
    this.HealthCareServiceDeliveries,
  });
}

@JsonSerializable()
class EDI271EligibilityBenefitEntity {
  final String? Address1;
  final String? Address2;
  final String? City;
  final List<CommunicationNumberType>? CommunicationNumber;
  final String? EntityType;
  final String? Firstname;
  final String? IdentificationCode;
  final String? IdentificationType;
  final String? Lastname_R;
  final String? Middlename;
  final String? State;
  final String? Suffix;
  final String? Zip;

  factory EDI271EligibilityBenefitEntity.fromJson(Map<String, dynamic> json) =>
      _$EDI271EligibilityBenefitEntityFromJson(json);

  Map<String, dynamic> toJson() => _$EDI271EligibilityBenefitEntityToJson(this);

  EDI271EligibilityBenefitEntity({
    this.Address1,
    this.Address2,
    this.City,
    this.CommunicationNumber,
    this.EntityType,
    this.Firstname,
    this.IdentificationCode,
    this.IdentificationType,
    this.Lastname_R,
    this.Middlename,
    this.State,
    this.Suffix,
    this.Zip,
  });
}

@JsonSerializable()
class EDI271HealthCareServiveDelivery {
  final String? QuantityQualifier;
  final String? TotalQuantity;
  final String? MeasurementUnit;
  final String? MeasurementPeriod;
  final String? TimePeriodQualifier;
  final String? TotalNumberOfPeriods;
  final String? DeliveryFrequency;
  final String? DeliveryPatternTime;

  factory EDI271HealthCareServiveDelivery.fromJson(Map<String, dynamic> json) =>
      _$EDI271HealthCareServiveDeliveryFromJson(json);

  Map<String, dynamic> toJson() =>
      _$EDI271HealthCareServiveDeliveryToJson(this);

  EDI271HealthCareServiveDelivery({
    this.QuantityQualifier,
    this.TotalQuantity,
    this.MeasurementUnit,
    this.MeasurementPeriod,
    this.TimePeriodQualifier,
    this.TotalNumberOfPeriods,
    this.DeliveryFrequency,
    this.DeliveryPatternTime,
  });
}

@JsonSerializable()
class PreventiveService {
  final String? ProcedureCode;
  final String? TechnicalEligibleDate;
  final String? ProfessionalEligibleDate;

  final List<PreventivBenefits>? Benefits;

  factory PreventiveService.fromJson(Map<String, dynamic> json) =>
      _$PreventiveServiceFromJson(json);

  Map<String, dynamic> toJson() => _$PreventiveServiceToJson(this);

  PreventiveService({
    this.ProcedureCode,
    this.TechnicalEligibleDate,
    this.ProfessionalEligibleDate,
    this.Benefits,
  });
}

@JsonSerializable()
class PreventivBenefits {
  final String? EligibilityOrBenefit;
  final String? InsuranceType;
  final List<Date_Type>? Date;
  final String? TimePeriodQualifier;
  final String? MonetaryAmount;
  final String? Percent;

  factory PreventivBenefits.fromJson(Map<String, dynamic> json) =>
      _$PreventivBenefitsFromJson(json);

  Map<String, dynamic> toJson() => _$PreventivBenefitsToJson(this);

  PreventivBenefits({
    this.EligibilityOrBenefit,
    this.InsuranceType,
    this.Date,
    this.TimePeriodQualifier,
    this.MonetaryAmount,
    this.Percent,
  });
}

@JsonSerializable()
class PayersInfo {
  final String? PrimaryPayer; //this indicates the primary payer is someone else
  final String?
      Payer; // this indicates the payer info is either primary or secondary.
  final String? SecondaryPayer; // - this indicates there is a secondary payer
  final String?
      PlanSponsor; // - this indicates a plan sponsor that the payer is notified about.
  final String? IndependentPhysiciansAssociation_IPA; // - this indicates IPA
  final String?
      WorkersCompensation; // - this indicates for Medicare, the Medicare Workers Comp payer.
  final String? ContractedServiceProvider;
  final String? IPAStartDate;

  factory PayersInfo.fromJson(Map<String, dynamic> json) =>
      _$PayersInfoFromJson(json);

  Map<String, dynamic> toJson() => _$PayersInfoToJson(this);

  PayersInfo({
    this.PrimaryPayer,
    this.Payer,
    this.SecondaryPayer,
    this.PlanSponsor,
    this.IndependentPhysiciansAssociation_IPA,
    this.WorkersCompensation,
    this.ContractedServiceProvider,
    this.IPAStartDate,
  });
}

@JsonSerializable()
class Miscellaneous {
  final String? RemainingSpendDown;
  final String? IsNPIInNetwork;
  final String? MemberID;

  factory Miscellaneous.fromJson(Map<String, dynamic> json) =>
      _$MiscellaneousFromJson(json);

  Map<String, dynamic> toJson() => _$MiscellaneousToJson(this);

  Miscellaneous({
    this.RemainingSpendDown,
    this.IsNPIInNetwork,
    this.MemberID,
  });
}

@JsonSerializable()
class PlanCoverageSummary {
  final String? Status;
  final String? EffectiveDate;
  final String? ExpiryDate;
  final String? PlanName;
  final String? PolicyType;
  final String? GroupNumber;
  final String? GroupName;
  final String? PlanNetworkID;
  final String? PlanNetworkName;
  final String? SubscriberRelationship;
  final String? PlanNumber;
  final String? HRAorHSALimitationsRemaining;
  final String? LastUpdatedDateOfEDI;
  final String? PatientGender;
  final String? BenefitPlanCode;

  factory PlanCoverageSummary.fromJson(Map<String, dynamic> json) =>
      _$PlanCoverageSummaryFromJson(json);

  Map<String, dynamic> toJson() => _$PlanCoverageSummaryToJson(this);

  PlanCoverageSummary({
    this.Status,
    this.EffectiveDate,
    this.ExpiryDate,
    this.PlanName,
    this.PolicyType,
    this.GroupNumber,
    this.GroupName,
    this.PlanNetworkID,
    this.PlanNetworkName,
    this.SubscriberRelationship,
    this.PlanNumber,
    this.HRAorHSALimitationsRemaining,
    this.LastUpdatedDateOfEDI,
    this.PatientGender,
    this.BenefitPlanCode,
  });
}

@JsonSerializable()
class DeductibleAndOOP {
  final Details? IndividualDeductibleInNet;
  final Details? IndividualDeductibleOutNet;
  final Details? IndividualDeductibleRemainingInNet;
  final Details? IndividualDeductibleRemainingOutNet;
  final Details? FamilyDeductibleInNet;
  final Details? FamilyDeductibleOutNet;
  final Details? FamilyDeductibleRemainingInNet;
  final Details? FamilyDeductibleRemainingOutNet;
  final Details? IndividualOOP_InNet;
  final Details? IndividualOOP_OutNet;
  final Details? IndividualOOPRemainingInNet;
  final Details? IndividualOOPRemainingOutNet;
  final Details? FamilyOOPInNet;
  final Details? FamilyOOPOutNet;
  final Details? FamilyOOPRemainingInNet;
  final Details? FamilyOOPRemainingOutNet;

  factory DeductibleAndOOP.fromJson(Map<String, dynamic> json) =>
      _$DeductibleAndOOPFromJson(json);

  Map<String, dynamic> toJson() => _$DeductibleAndOOPToJson(this);

  DeductibleAndOOP({
    this.IndividualDeductibleInNet,
    this.IndividualDeductibleOutNet,
    this.IndividualDeductibleRemainingInNet,
    this.IndividualDeductibleRemainingOutNet,
    this.FamilyDeductibleInNet,
    this.FamilyDeductibleOutNet,
    this.FamilyDeductibleRemainingInNet,
    this.FamilyDeductibleRemainingOutNet,
    this.IndividualOOP_InNet,
    this.IndividualOOP_OutNet,
    this.IndividualOOPRemainingInNet,
    this.IndividualOOPRemainingOutNet,
    this.FamilyOOPInNet,
    this.FamilyOOPOutNet,
    this.FamilyOOPRemainingInNet,
    this.FamilyOOPRemainingOutNet,
  });
}

@JsonSerializable()
class PCPAuthSummary {
  final String? PrimaryCareProviderName;
  final String? PCPStartDate;
  final String? PrimaryCareProviderPhoneNumber;
  final String? InNetHBPCAuthorizationInfo;
  final String? OutNetHBPCAuthorizationInfo;
  final String? UtilizationManagementOrganizationName;
  final String? UMOTelephone;
  final String? CapitationFacilityName;

  factory PCPAuthSummary.fromJson(Map<String, dynamic> json) =>
      _$PCPAuthSummaryFromJson(json);

  Map<String, dynamic> toJson() => _$PCPAuthSummaryToJson(this);

  PCPAuthSummary({
    this.PrimaryCareProviderName,
    this.PCPStartDate,
    this.PrimaryCareProviderPhoneNumber,
    this.InNetHBPCAuthorizationInfo,
    this.OutNetHBPCAuthorizationInfo,
    this.UtilizationManagementOrganizationName,
    this.UMOTelephone,
    this.CapitationFacilityName,
  });
}

@JsonSerializable()
class PracticeTypeSummary {
  final Details? CoPayInNet;
  final Details? CoInsInNet;
  final Details? CoPayOutNet;
  final Details? CoInsOutNet;
  final String? UMOName;
  final String? UMOTelephone;
  final String? InNetServiceAuthorizationInfo;
  final String? OutNetServiceAuthorizationInfo;

  factory PracticeTypeSummary.fromJson(Map<String, dynamic> json) =>
      _$PracticeTypeSummaryFromJson(json);

  Map<String, dynamic> toJson() => _$PracticeTypeSummaryToJson(this);

  PracticeTypeSummary({
    this.CoPayInNet,
    this.CoInsInNet,
    this.CoPayOutNet,
    this.CoInsOutNet,
    this.UMOName,
    this.UMOTelephone,
    this.InNetServiceAuthorizationInfo,
    this.OutNetServiceAuthorizationInfo,
  });
}

@JsonSerializable()
class OpthalmologySummary {
  final String? VisionPayerName;
  OpthalmologySummary({this.VisionPayerName});

  factory OpthalmologySummary.fromJson(Map<String, dynamic> json) =>
      _$OpthalmologySummaryFromJson(json);

  Map<String, dynamic> toJson() => _$OpthalmologySummaryToJson(this);
}

@JsonSerializable()
class TherapySummary {
  //physical therapy
  final Details? TherapyVisitsLimitationsInNet;
  final Details? TherapyVisitsLimitationsOutNet;
  final Details? TherapyVisitsRemainingInNet;
  final Details? TherapyVisitsLRemainingOutNet;
  final Details? TherapyAmountLimitationsInNet;
  final Details? TherapyAmountLimitationsOutNet;
  final Details? TherapyAmountRemainingInNet;
  final Details? TherapyAmountRemainingOutNet;

  factory TherapySummary.fromJson(Map<String, dynamic> json) =>
      _$TherapySummaryFromJson(json);

  Map<String, dynamic> toJson() => _$TherapySummaryToJson(this);

  TherapySummary({
    this.TherapyVisitsLimitationsInNet,
    this.TherapyVisitsLimitationsOutNet,
    this.TherapyVisitsRemainingInNet,
    this.TherapyVisitsLRemainingOutNet,
    this.TherapyAmountLimitationsInNet,
    this.TherapyAmountLimitationsOutNet,
    this.TherapyAmountRemainingInNet,
    this.TherapyAmountRemainingOutNet,
  });
}

@JsonSerializable()
class VisitLimitationsSummary {
  final Details? VisitsLimitationsInNet;
  final Details? VisitsLimitationsOutNet;
  final Details? VisitsRemainingInNet;
  final Details? VisitsLRemainingOutNet;

  factory VisitLimitationsSummary.fromJson(Map<String, dynamic> json) =>
      _$VisitLimitationsSummaryFromJson(json);

  Map<String, dynamic> toJson() => _$VisitLimitationsSummaryToJson(this);

  VisitLimitationsSummary({
    this.VisitsLimitationsInNet,
    this.VisitsLimitationsOutNet,
    this.VisitsRemainingInNet,
    this.VisitsLRemainingOutNet,
  });
}

@JsonSerializable()
class MedicareInfoSummary {
  final String? AdvantagePayerName;
  final String? AdvantagePolicyType;
  final String? AdvantageCOBStartDate;
  final String? AdvantageCOBEndDate;
  final String? HospiceQty;
  final String? HospiceStartDate;
  final String? HospiceEndDate;
  final String? HomeHealthCareStartDate;
  final String? HomeHealthCareEndDate;
  final Details? MedicareCoInsurance;
  final String? PharmacyPayerName;
  final String? PharmacyPayerPlanNumber;
  final String? PharmacyPayerPlanNetworkID;
  final String? SkilledNursingCareStartDate;
  final String? SkilledNursingCareEndDate;
  final String? WCAutoInjuryLiabilityPayerName;
  final String? WCAutoInjuryLiabilityPolicyType;
  final String? WCAutoInjuryLiabilityCOBStartDate;
  final String? WCAutoInjuryLiabilityCOBEndDate;
  final String? QMBPolicyType;
  final Details? Part_A_Deductible;
  final Details? Part_A_Deductible_Remaining;
  final Details? Part_B_Deductible;
  final Details? Part_B_Deductible_Remaining;
  final Details? OT_UsedAmount;
  final Details? PT_SLP_UsedAmount;

  factory MedicareInfoSummary.fromJson(Map<String, dynamic> json) =>
      _$MedicareInfoSummaryFromJson(json);

  Map<String, dynamic> toJson() => _$MedicareInfoSummaryToJson(this);

  MedicareInfoSummary({
    this.AdvantagePayerName,
    this.AdvantagePolicyType,
    this.AdvantageCOBStartDate,
    this.AdvantageCOBEndDate,
    this.HospiceQty,
    this.HospiceStartDate,
    this.HospiceEndDate,
    this.HomeHealthCareStartDate,
    this.HomeHealthCareEndDate,
    this.MedicareCoInsurance,
    this.PharmacyPayerName,
    this.PharmacyPayerPlanNumber,
    this.PharmacyPayerPlanNetworkID,
    this.SkilledNursingCareStartDate,
    this.SkilledNursingCareEndDate,
    this.WCAutoInjuryLiabilityPayerName,
    this.WCAutoInjuryLiabilityPolicyType,
    this.WCAutoInjuryLiabilityCOBStartDate,
    this.WCAutoInjuryLiabilityCOBEndDate,
    this.QMBPolicyType,
    this.Part_A_Deductible,
    this.Part_A_Deductible_Remaining,
    this.Part_B_Deductible,
    this.Part_B_Deductible_Remaining,
    this.OT_UsedAmount,
    this.PT_SLP_UsedAmount,
  });
}

@JsonSerializable()
class Details {
  final String? Value;
  final String? Notes;

  Details({this.Notes, this.Value});

  factory Details.fromJson(Map<String, dynamic> json) =>
      _$DetailsFromJson(json);

  Map<String, dynamic> toJson() => _$DetailsToJson(this);
}
