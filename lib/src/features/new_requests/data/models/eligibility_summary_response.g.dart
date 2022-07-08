// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'eligibility_summary_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EligibilitySummaryResponse _$EligibilitySummaryResponseFromJson(
        Map<String, dynamic> json) =>
    EligibilitySummaryResponse(
      RequestID: json['RequestID'] as int?,
      APIResponseCode: json['APIResponseCode'] as String?,
      APIResponseMessage: json['APIResponseMessage'] as String?,
      IsPayerBackOffice: json['IsPayerBackOffice'] as bool?,
      PverifyPayerCode: json['PverifyPayerCode'] as String?,
      PayerName: json['PayerName'] as String?,
      VerificationType: json['VerificationType'] as String?,
      ExceptionNotes: json['ExceptionNotes'] as String?,
      IsHMOPlan: json['IsHMOPlan'] as bool?,
      AddtionalInfo: json['AddtionalInfo'] as String?,
      Location: json['Location'] as String?,
      ReferrenceId: json['ReferrenceId'] as String?,
      ResultPracticeType: json['ResultPracticeType'] as String?,
      AreAllSTCsProcessed: json['AreAllSTCsProcessed'] as bool?,
      STCsStatusMessage: json['STCsStatusMessage'] as String?,
      IsProviderInNetwork: json['IsProviderInNetwork'] as bool?,
      DemographicInfo: json['DemographicInfo'] == null
          ? null
          : PboDemographicInfo.fromJson(
              json['DemographicInfo'] as Map<String, dynamic>),
      OtherPayerInfo: json['OtherPayerInfo'] == null
          ? null
          : PayersInfo.fromJson(json['OtherPayerInfo'] as Map<String, dynamic>),
      planCoverageSummary: json['PlanCoverageSummary'] == null
          ? null
          : PlanCoverageSummary.fromJson(
              json['PlanCoverageSummary'] as Map<String, dynamic>),
      PCPAuthInfoSummary: json['PCPAuthInfoSummary'] == null
          ? null
          : PCPAuthSummary.fromJson(
              json['PCPAuthInfoSummary'] as Map<String, dynamic>),
      HBPC_Deductible_OOP_Summary: json['HBPC_Deductible_OOP_Summary'] == null
          ? null
          : DecductibleAndOOP.fromJson(
              json['HBPC_Deductible_OOP_Summary'] as Map<String, dynamic>),
      medicareInfoSummary: json['MedicareInfoSummary'] == null
          ? null
          : MedicareInfoSummary.fromJson(
              json['MedicareInfoSummary'] as Map<String, dynamic>),
      MiscellaneousInfoSummary: json['MiscellaneousInfoSummary'] == null
          ? null
          : Miscellaneous.fromJson(
              json['MiscellaneousInfoSummary'] as Map<String, dynamic>),
      DiagnosticLabSummary: json['DiagnosticLabSummary'] == null
          ? null
          : PracticeTypeSummary.fromJson(
              json['DiagnosticLabSummary'] as Map<String, dynamic>),
      SpecialistOfficeSummary: json['SpecialistOfficeSummary'] == null
          ? null
          : PracticeTypeSummary.fromJson(
              json['SpecialistOfficeSummary'] as Map<String, dynamic>),
      SurgicalSummary: json['SurgicalSummary'] == null
          ? null
          : PracticeTypeSummary.fromJson(
              json['SurgicalSummary'] as Map<String, dynamic>),
      ASC_FacilitySummary: json['ASC_FacilitySummary'] == null
          ? null
          : PracticeTypeSummary.fromJson(
              json['ASC_FacilitySummary'] as Map<String, dynamic>),
      OncologySummary: json['OncologySummary'] == null
          ? null
          : PracticeTypeSummary.fromJson(
              json['OncologySummary'] as Map<String, dynamic>),
      DMESummary: json['DMESummary'] == null
          ? null
          : PracticeTypeSummary.fromJson(
              json['DMESummary'] as Map<String, dynamic>),
      MentalHealthSummary: json['MentalHealthSummary'] == null
          ? null
          : PracticeTypeSummary.fromJson(
              json['MentalHealthSummary'] as Map<String, dynamic>),
      PrimaryCareSummary: json['PrimaryCareSummary'] == null
          ? null
          : PracticeTypeSummary.fromJson(
              json['PrimaryCareSummary'] as Map<String, dynamic>),
      MRI_CT_ScanSummary: json['MRI_CT_ScanSummary'] == null
          ? null
          : PracticeTypeSummary.fromJson(
              json['MRI_CT_ScanSummary'] as Map<String, dynamic>),
      UrgentCareSummary: json['UrgentCareSummary'] == null
          ? null
          : PracticeTypeSummary.fromJson(
              json['UrgentCareSummary'] as Map<String, dynamic>),
      XRaySummary: json['XRaySummary'] == null
          ? null
          : PracticeTypeSummary.fromJson(
              json['XRaySummary'] as Map<String, dynamic>),
      opthalmologySummary: json['OpthalmologySummary'] == null
          ? null
          : OpthalmologySummary.fromJson(
              json['OpthalmologySummary'] as Map<String, dynamic>),
      PhysicalTherapySummary: json['PhysicalTherapySummary'] == null
          ? null
          : TherapySummary.fromJson(
              json['PhysicalTherapySummary'] as Map<String, dynamic>),
      ChiropracticSummary: json['ChiropracticSummary'] == null
          ? null
          : TherapySummary.fromJson(
              json['ChiropracticSummary'] as Map<String, dynamic>),
      SpeechThearySummary: json['SpeechThearySummary'] == null
          ? null
          : TherapySummary.fromJson(
              json['SpeechThearySummary'] as Map<String, dynamic>),
      OccupationalTherapySummary: json['OccupationalTherapySummary'] == null
          ? null
          : TherapySummary.fromJson(
              json['OccupationalTherapySummary'] as Map<String, dynamic>),
      EmergencyMedicalSummary: json['EmergencyMedicalSummary'] == null
          ? null
          : PracticeTypeSummary.fromJson(
              json['EmergencyMedicalSummary'] as Map<String, dynamic>),
      WellnessOrRoutineVisitSummary: json['WellnessOrRoutineVisitSummary'] ==
              null
          ? null
          : VisitLimitationsSummary.fromJson(
              json['WellnessOrRoutineVisitSummary'] as Map<String, dynamic>),
      PodiatryOfficeSummary: json['PodiatryOfficeSummary'] == null
          ? null
          : PracticeTypeSummary.fromJson(
              json['PodiatryOfficeSummary'] as Map<String, dynamic>),
      OutpatientProfessionalSummary: json['OutpatientProfessionalSummary'] ==
              null
          ? null
          : PracticeTypeSummary.fromJson(
              json['OutpatientProfessionalSummary'] as Map<String, dynamic>),
      AnesthesiaSummary: json['AnesthesiaSummary'] == null
          ? null
          : PracticeTypeSummary.fromJson(
              json['AnesthesiaSummary'] as Map<String, dynamic>),
      SubstanceAbuseProfessionalSummary:
          json['SubstanceAbuseProfessionalSummary'] == null
              ? null
              : PracticeTypeSummary.fromJson(
                  json['SubstanceAbuseProfessionalSummary']
                      as Map<String, dynamic>),
      SubstanceAbuseInPatientFacilitySummary:
          json['SubstanceAbuseInPatientFacilitySummary'] == null
              ? null
              : PracticeTypeSummary.fromJson(
                  json['SubstanceAbuseInPatientFacilitySummary']
                      as Map<String, dynamic>),
      SubstanceAbuseOutPatientFacilitySummary:
          json['SubstanceAbuseOutPatientFacilitySummary'] == null
              ? null
              : PracticeTypeSummary.fromJson(
                  json['SubstanceAbuseOutPatientFacilitySummary']
                      as Map<String, dynamic>),
      FluVaccinationSummary: json['FluVaccinationSummary'] == null
          ? null
          : PracticeTypeSummary.fromJson(
              json['FluVaccinationSummary'] as Map<String, dynamic>),
      HospitalInpatientSummary: json['HospitalInpatientSummary'] == null
          ? null
          : PracticeTypeSummary.fromJson(
              json['HospitalInpatientSummary'] as Map<String, dynamic>),
      PharmacySummary: json['PharmacySummary'] == null
          ? null
          : PracticeTypeSummary.fromJson(
              json['PharmacySummary'] as Map<String, dynamic>),
      HospitalOutPatientSummary: json['HospitalOutPatientSummary'] == null
          ? null
          : PracticeTypeSummary.fromJson(
              json['HospitalOutPatientSummary'] as Map<String, dynamic>),
      DentalSummary: json['DentalSummary'] == null
          ? null
          : PracticeTypeSummary.fromJson(
              json['DentalSummary'] as Map<String, dynamic>),
      TelemedicinePrimaryCareSummary: json['TelemedicinePrimaryCareSummary'] ==
              null
          ? null
          : PracticeTypeSummary.fromJson(
              json['TelemedicinePrimaryCareSummary'] as Map<String, dynamic>),
      TelemedicineSpecialistSummary: json['TelemedicineSpecialistSummary'] ==
              null
          ? null
          : PracticeTypeSummary.fromJson(
              json['TelemedicineSpecialistSummary'] as Map<String, dynamic>),
      TelemedicineUrgentCareSummary: json['TelemedicineUrgentCareSummary'] ==
              null
          ? null
          : PracticeTypeSummary.fromJson(
              json['TelemedicineUrgentCareSummary'] as Map<String, dynamic>),
      TelemedicinePhysicalTherapySummary:
          json['TelemedicinePhysicalTherapySummary'] == null
              ? null
              : TherapySummary.fromJson(
                  json['TelemedicinePhysicalTherapySummary']
                      as Map<String, dynamic>),
      TelemedicineMentalHealthSummary:
          json['TelemedicineMentalHealthSummary'] == null
              ? null
              : PracticeTypeSummary.fromJson(
                  json['TelemedicineMentalHealthSummary']
                      as Map<String, dynamic>),
      PsychotherapySummary: json['PsychotherapySummary'] == null
          ? null
          : PracticeTypeSummary.fromJson(
              json['PsychotherapySummary'] as Map<String, dynamic>),
      DisclaimerMessage: json['DisclaimerMessage'] as String?,
      ServiceDetailsList: (json['ServiceDetailsList'] as List<dynamic>?)
          ?.map((e) => ServiceDetails.fromJson(e as Map<String, dynamic>))
          .toList(),
      EligibilityResult: json['EligibilityResult'] as String?,
      NonEDIResultPath: json['NonEDIResultPath'] as String?,
      PreventiveServices: (json['PreventiveServices'] as List<dynamic>?)
          ?.map((e) => PreventiveService.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$EligibilitySummaryResponseToJson(
    EligibilitySummaryResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('RequestID', instance.RequestID);
  writeNotNull('APIResponseCode', instance.APIResponseCode);
  writeNotNull('APIResponseMessage', instance.APIResponseMessage);
  writeNotNull('IsPayerBackOffice', instance.IsPayerBackOffice);
  writeNotNull('PverifyPayerCode', instance.PverifyPayerCode);
  writeNotNull('PayerName', instance.PayerName);
  writeNotNull('VerificationType', instance.VerificationType);
  writeNotNull('ExceptionNotes', instance.ExceptionNotes);
  writeNotNull('IsHMOPlan', instance.IsHMOPlan);
  writeNotNull('AddtionalInfo', instance.AddtionalInfo);
  writeNotNull('Location', instance.Location);
  writeNotNull('ReferrenceId', instance.ReferrenceId);
  writeNotNull('ResultPracticeType', instance.ResultPracticeType);
  writeNotNull('AreAllSTCsProcessed', instance.AreAllSTCsProcessed);
  writeNotNull('STCsStatusMessage', instance.STCsStatusMessage);
  writeNotNull('IsProviderInNetwork', instance.IsProviderInNetwork);
  writeNotNull('DemographicInfo', instance.DemographicInfo?.toJson());
  writeNotNull('OtherPayerInfo', instance.OtherPayerInfo?.toJson());
  writeNotNull('PlanCoverageSummary', instance.planCoverageSummary?.toJson());
  writeNotNull('PCPAuthInfoSummary', instance.PCPAuthInfoSummary?.toJson());
  writeNotNull('HBPC_Deductible_OOP_Summary',
      instance.HBPC_Deductible_OOP_Summary?.toJson());
  writeNotNull('MedicareInfoSummary', instance.medicareInfoSummary?.toJson());
  writeNotNull(
      'MiscellaneousInfoSummary', instance.MiscellaneousInfoSummary?.toJson());
  writeNotNull('DiagnosticLabSummary', instance.DiagnosticLabSummary?.toJson());
  writeNotNull(
      'SpecialistOfficeSummary', instance.SpecialistOfficeSummary?.toJson());
  writeNotNull('SurgicalSummary', instance.SurgicalSummary?.toJson());
  writeNotNull('ASC_FacilitySummary', instance.ASC_FacilitySummary?.toJson());
  writeNotNull('OncologySummary', instance.OncologySummary?.toJson());
  writeNotNull('DMESummary', instance.DMESummary?.toJson());
  writeNotNull('MentalHealthSummary', instance.MentalHealthSummary?.toJson());
  writeNotNull('PrimaryCareSummary', instance.PrimaryCareSummary?.toJson());
  writeNotNull('MRI_CT_ScanSummary', instance.MRI_CT_ScanSummary?.toJson());
  writeNotNull('UrgentCareSummary', instance.UrgentCareSummary?.toJson());
  writeNotNull('XRaySummary', instance.XRaySummary?.toJson());
  writeNotNull('OpthalmologySummary', instance.opthalmologySummary?.toJson());
  writeNotNull(
      'PhysicalTherapySummary', instance.PhysicalTherapySummary?.toJson());
  writeNotNull('ChiropracticSummary', instance.ChiropracticSummary?.toJson());
  writeNotNull('SpeechThearySummary', instance.SpeechThearySummary?.toJson());
  writeNotNull('OccupationalTherapySummary',
      instance.OccupationalTherapySummary?.toJson());
  writeNotNull(
      'EmergencyMedicalSummary', instance.EmergencyMedicalSummary?.toJson());
  writeNotNull('WellnessOrRoutineVisitSummary',
      instance.WellnessOrRoutineVisitSummary?.toJson());
  writeNotNull(
      'PodiatryOfficeSummary', instance.PodiatryOfficeSummary?.toJson());
  writeNotNull('OutpatientProfessionalSummary',
      instance.OutpatientProfessionalSummary?.toJson());
  writeNotNull('AnesthesiaSummary', instance.AnesthesiaSummary?.toJson());
  writeNotNull('SubstanceAbuseProfessionalSummary',
      instance.SubstanceAbuseProfessionalSummary?.toJson());
  writeNotNull('SubstanceAbuseInPatientFacilitySummary',
      instance.SubstanceAbuseInPatientFacilitySummary?.toJson());
  writeNotNull('SubstanceAbuseOutPatientFacilitySummary',
      instance.SubstanceAbuseOutPatientFacilitySummary?.toJson());
  writeNotNull(
      'FluVaccinationSummary', instance.FluVaccinationSummary?.toJson());
  writeNotNull(
      'HospitalInpatientSummary', instance.HospitalInpatientSummary?.toJson());
  writeNotNull('PharmacySummary', instance.PharmacySummary?.toJson());
  writeNotNull('HospitalOutPatientSummary',
      instance.HospitalOutPatientSummary?.toJson());
  writeNotNull('DentalSummary', instance.DentalSummary?.toJson());
  writeNotNull('TelemedicinePrimaryCareSummary',
      instance.TelemedicinePrimaryCareSummary?.toJson());
  writeNotNull('TelemedicineSpecialistSummary',
      instance.TelemedicineSpecialistSummary?.toJson());
  writeNotNull('TelemedicineUrgentCareSummary',
      instance.TelemedicineUrgentCareSummary?.toJson());
  writeNotNull('TelemedicinePhysicalTherapySummary',
      instance.TelemedicinePhysicalTherapySummary?.toJson());
  writeNotNull('TelemedicineMentalHealthSummary',
      instance.TelemedicineMentalHealthSummary?.toJson());
  writeNotNull('PsychotherapySummary', instance.PsychotherapySummary?.toJson());
  writeNotNull('DisclaimerMessage', instance.DisclaimerMessage);
  writeNotNull('ServiceDetailsList',
      instance.ServiceDetailsList?.map((e) => e.toJson()).toList());
  writeNotNull('PreventiveServices',
      instance.PreventiveServices?.map((e) => e.toJson()).toList());
  writeNotNull('EligibilityResult', instance.EligibilityResult);
  writeNotNull('NonEDIResultPath', instance.NonEDIResultPath);
  return val;
}

PboDemographicInfo _$PboDemographicInfoFromJson(Map<String, dynamic> json) =>
    PboDemographicInfo(
      Subscriber: json['Subscriber'] == null
          ? null
          : PboSubscriber.fromJson(json['Subscriber'] as Map<String, dynamic>),
      Dependent: json['Dependent'] == null
          ? null
          : PboDependent.fromJson(json['Dependent'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PboDemographicInfoToJson(PboDemographicInfo instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('Subscriber', instance.Subscriber?.toJson());
  writeNotNull('Dependent', instance.Dependent?.toJson());
  return val;
}

DecductibleAndOOP _$DecductibleAndOOPFromJson(Map<String, dynamic> json) =>
    DecductibleAndOOP(
      IndividualDeductibleInNet: json['IndividualDeductibleInNet'] == null
          ? null
          : Details.fromJson(
              json['IndividualDeductibleInNet'] as Map<String, dynamic>),
      IndividualDeductibleOutNet: json['IndividualDeductibleOutNet'] == null
          ? null
          : Details.fromJson(
              json['IndividualDeductibleOutNet'] as Map<String, dynamic>),
      IndividualDeductibleRemainingInNet:
          json['IndividualDeductibleRemainingInNet'] == null
              ? null
              : Details.fromJson(json['IndividualDeductibleRemainingInNet']
                  as Map<String, dynamic>),
      IndividualDeductibleRemainingOutNet:
          json['IndividualDeductibleRemainingOutNet'] == null
              ? null
              : Details.fromJson(json['IndividualDeductibleRemainingOutNet']
                  as Map<String, dynamic>),
      FamilyDeductibleInNet: json['FamilyDeductibleInNet'] == null
          ? null
          : Details.fromJson(
              json['FamilyDeductibleInNet'] as Map<String, dynamic>),
      FamilyDeductibleOutNet: json['FamilyDeductibleOutNet'] == null
          ? null
          : Details.fromJson(
              json['FamilyDeductibleOutNet'] as Map<String, dynamic>),
      FamilyDeductibleRemainingInNet: json['FamilyDeductibleRemainingInNet'] ==
              null
          ? null
          : Details.fromJson(
              json['FamilyDeductibleRemainingInNet'] as Map<String, dynamic>),
      FamilyDeductibleRemainingOutNet:
          json['FamilyDeductibleRemainingOutNet'] == null
              ? null
              : Details.fromJson(json['FamilyDeductibleRemainingOutNet']
                  as Map<String, dynamic>),
      IndividualOOP_InNet: json['IndividualOOP_InNet'] == null
          ? null
          : Details.fromJson(
              json['IndividualOOP_InNet'] as Map<String, dynamic>),
      IndividualOOP_OutNet: json['IndividualOOP_OutNet'] == null
          ? null
          : Details.fromJson(
              json['IndividualOOP_OutNet'] as Map<String, dynamic>),
      IndividualOOPRemainingInNet: json['IndividualOOPRemainingInNet'] == null
          ? null
          : Details.fromJson(
              json['IndividualOOPRemainingInNet'] as Map<String, dynamic>),
      IndividualOOPRemainingOutNet: json['IndividualOOPRemainingOutNet'] == null
          ? null
          : Details.fromJson(
              json['IndividualOOPRemainingOutNet'] as Map<String, dynamic>),
      FamilyOOPInNet: json['FamilyOOPInNet'] == null
          ? null
          : Details.fromJson(json['FamilyOOPInNet'] as Map<String, dynamic>),
      FamilyOOPOutNet: json['FamilyOOPOutNet'] == null
          ? null
          : Details.fromJson(json['FamilyOOPOutNet'] as Map<String, dynamic>),
      FamilyOOPRemainingInNet: json['FamilyOOPRemainingInNet'] == null
          ? null
          : Details.fromJson(
              json['FamilyOOPRemainingInNet'] as Map<String, dynamic>),
      FamilyOOPRemainingOutNet: json['FamilyOOPRemainingOutNet'] == null
          ? null
          : Details.fromJson(
              json['FamilyOOPRemainingOutNet'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DecductibleAndOOPToJson(DecductibleAndOOP instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('IndividualDeductibleInNet',
      instance.IndividualDeductibleInNet?.toJson());
  writeNotNull('IndividualDeductibleOutNet',
      instance.IndividualDeductibleOutNet?.toJson());
  writeNotNull('IndividualDeductibleRemainingInNet',
      instance.IndividualDeductibleRemainingInNet?.toJson());
  writeNotNull('IndividualDeductibleRemainingOutNet',
      instance.IndividualDeductibleRemainingOutNet?.toJson());
  writeNotNull(
      'FamilyDeductibleInNet', instance.FamilyDeductibleInNet?.toJson());
  writeNotNull(
      'FamilyDeductibleOutNet', instance.FamilyDeductibleOutNet?.toJson());
  writeNotNull('FamilyDeductibleRemainingInNet',
      instance.FamilyDeductibleRemainingInNet?.toJson());
  writeNotNull('FamilyDeductibleRemainingOutNet',
      instance.FamilyDeductibleRemainingOutNet?.toJson());
  writeNotNull('IndividualOOP_InNet', instance.IndividualOOP_InNet?.toJson());
  writeNotNull('IndividualOOP_OutNet', instance.IndividualOOP_OutNet?.toJson());
  writeNotNull('IndividualOOPRemainingInNet',
      instance.IndividualOOPRemainingInNet?.toJson());
  writeNotNull('IndividualOOPRemainingOutNet',
      instance.IndividualOOPRemainingOutNet?.toJson());
  writeNotNull('FamilyOOPInNet', instance.FamilyOOPInNet?.toJson());
  writeNotNull('FamilyOOPOutNet', instance.FamilyOOPOutNet?.toJson());
  writeNotNull(
      'FamilyOOPRemainingInNet', instance.FamilyOOPRemainingInNet?.toJson());
  writeNotNull(
      'FamilyOOPRemainingOutNet', instance.FamilyOOPRemainingOutNet?.toJson());
  return val;
}

PboSubscriber _$PboSubscriberFromJson(Map<String, dynamic> json) =>
    PboSubscriber(
      Address1: json['Address1'] as String?,
      Address2: json['Address2'] as String?,
      City: json['City'] as String?,
      CommunicationNumber: (json['CommunicationNumber'] as List<dynamic>?)
          ?.map((e) => PboCommunicationType.fromJson(e as Map<String, dynamic>))
          .toList(),
      Date: (json['Date'] as List<dynamic>?)
          ?.map((e) => PboDateType.fromJson(e as Map<String, dynamic>))
          .toList(),
      DOB_R: json['DOB_R'] as String?,
      Firstname: json['Firstname'] as String?,
      Gender_R: json['Gender_R'] as String?,
      Identification: (json['Identification'] as List<dynamic>?)
          ?.map(
              (e) => PboIdentificationType.fromJson(e as Map<String, dynamic>))
          .toList(),
      Lastname_R: json['Lastname_R'] as String?,
      Middlename: json['Middlename'] as String?,
      State: json['State'] as String?,
      Suffix: json['Suffix'] as String?,
      Zip: json['Zip'] as String?,
      MilitaryPersonnelInfo: json['MilitaryPersonnelInfo'] == null
          ? null
          : PboMilitaryPersonnelInfo.fromJson(
              json['MilitaryPersonnelInfo'] as Map<String, dynamic>),
      FullName: json['FullName'] as String?,
    );

Map<String, dynamic> _$PboSubscriberToJson(PboSubscriber instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('Address1', instance.Address1);
  writeNotNull('Address2', instance.Address2);
  writeNotNull('City', instance.City);
  writeNotNull('CommunicationNumber',
      instance.CommunicationNumber?.map((e) => e.toJson()).toList());
  writeNotNull('Date', instance.Date?.map((e) => e.toJson()).toList());
  writeNotNull('DOB_R', instance.DOB_R);
  writeNotNull('Firstname', instance.Firstname);
  writeNotNull('Gender_R', instance.Gender_R);
  writeNotNull('Identification',
      instance.Identification?.map((e) => e.toJson()).toList());
  writeNotNull('Lastname_R', instance.Lastname_R);
  writeNotNull('Middlename', instance.Middlename);
  writeNotNull('State', instance.State);
  writeNotNull('Suffix', instance.Suffix);
  writeNotNull('Zip', instance.Zip);
  writeNotNull(
      'MilitaryPersonnelInfo', instance.MilitaryPersonnelInfo?.toJson());
  writeNotNull('FullName', instance.FullName);
  return val;
}

PboDependent _$PboDependentFromJson(Map<String, dynamic> json) => PboDependent(
      DependentInfo: json['DependentInfo'] == null
          ? null
          : PboSubscriber.fromJson(
              json['DependentInfo'] as Map<String, dynamic>),
      Relationship: json['Relationship'] as String?,
    );

Map<String, dynamic> _$PboDependentToJson(PboDependent instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('DependentInfo', instance.DependentInfo?.toJson());
  writeNotNull('Relationship', instance.Relationship);
  return val;
}

PboIdentificationType _$PboIdentificationTypeFromJson(
        Map<String, dynamic> json) =>
    PboIdentificationType(
      Code: json['Code'] as String?,
      Type: json['Type'] as String?,
      Name: json['Name'] as String?,
    );

Map<String, dynamic> _$PboIdentificationTypeToJson(
    PboIdentificationType instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('Code', instance.Code);
  writeNotNull('Type', instance.Type);
  writeNotNull('Name', instance.Name);
  return val;
}

PboCommunicationType _$PboCommunicationTypeFromJson(
        Map<String, dynamic> json) =>
    PboCommunicationType(
      Type: json['Type'] as String?,
      Name: json['Name'] as String?,
    );

Map<String, dynamic> _$PboCommunicationTypeToJson(
    PboCommunicationType instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('Type', instance.Type);
  writeNotNull('Name', instance.Name);
  return val;
}

PboDateType _$PboDateTypeFromJson(Map<String, dynamic> json) => PboDateType(
      Type: json['Type'] as String?,
      Name: json['Name'] as String?,
    );

Map<String, dynamic> _$PboDateTypeToJson(PboDateType instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('Type', instance.Type);
  writeNotNull('Name', instance.Name);
  return val;
}

PboMilitaryPersonnelInfo _$PboMilitaryPersonnelInfoFromJson(
        Map<String, dynamic> json) =>
    PboMilitaryPersonnelInfo(
      StatusCode: json['StatusCode'] as String?,
      EmploymentStatusCode: json['EmploymentStatusCode'] as String?,
      GovernmentServiceAffiliationCode:
          json['GovernmentServiceAffiliationCode'] as String?,
      Description: json['Description'] as String?,
      MilitaryServiceRankCode: json['MilitaryServiceRankCode'] as String?,
      ServiceDate: json['ServiceDate'] as String?,
    );

Map<String, dynamic> _$PboMilitaryPersonnelInfoToJson(
    PboMilitaryPersonnelInfo instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('StatusCode', instance.StatusCode);
  writeNotNull('EmploymentStatusCode', instance.EmploymentStatusCode);
  writeNotNull('GovernmentServiceAffiliationCode',
      instance.GovernmentServiceAffiliationCode);
  writeNotNull('Description', instance.Description);
  writeNotNull('MilitaryServiceRankCode', instance.MilitaryServiceRankCode);
  writeNotNull('ServiceDate', instance.ServiceDate);
  return val;
}

Identification_Type _$Identification_TypeFromJson(Map<String, dynamic> json) =>
    Identification_Type(
      Code: json['Code'] as String?,
      Type: json['Type'] as String?,
      Name: json['Name'] as String?,
    );

Map<String, dynamic> _$Identification_TypeToJson(Identification_Type instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('Code', instance.Code);
  writeNotNull('Type', instance.Type);
  writeNotNull('Name', instance.Name);
  return val;
}

CommunicationNumberType _$CommunicationNumberTypeFromJson(
        Map<String, dynamic> json) =>
    CommunicationNumberType(
      Number: json['Number'] as String?,
      Type: json['Type'] as String?,
    );

Map<String, dynamic> _$CommunicationNumberTypeToJson(
    CommunicationNumberType instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('Number', instance.Number);
  writeNotNull('Type', instance.Type);
  return val;
}

Date_Type _$Date_TypeFromJson(Map<String, dynamic> json) => Date_Type(
      Date: json['Date'] as String?,
      Type: json['Type'] as String?,
    );

Map<String, dynamic> _$Date_TypeToJson(Date_Type instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('Date', instance.Date);
  writeNotNull('Type', instance.Type);
  return val;
}

ServiceDetails _$ServiceDetailsFromJson(Map<String, dynamic> json) =>
    ServiceDetails(
      ServiceName: json['ServiceName'] as String?,
      EligibilityDetailsList: (json['EligibilityDetails'] as List<dynamic>?)
          ?.map((e) => EligibilityDetails.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ServiceDetailsToJson(ServiceDetails instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('ServiceName', instance.ServiceName);
  writeNotNull('EligibilityDetails',
      instance.EligibilityDetailsList?.map((e) => e.toJson()).toList());
  return val;
}

EligibilityDetails _$EligibilityDetailsFromJson(Map<String, dynamic> json) =>
    EligibilityDetails(
      AuthorizationOrCertificationRequired:
          json['AuthorizationOrCertificationRequired'] as String?,
      EligibilityOrBenefit: json['EligibilityOrBenefit'] as String?,
      CoverageLevel: json['CoverageLevel'] as String?,
      InsuranceType: json['InsuranceType'] as String?,
      MonetaryAmount: json['MonetaryAmount'] as String?,
      Percent: json['Percent'] as String?,
      PlanCoverageDescription: json['PlanCoverageDescription'] as String?,
      PlanNetworkIndicator: json['PlanNetworkIndicator'] as String?,
      QuantityQualifier: json['QuantityQualifier'] as String?,
      Quantity: json['Quantity'] as String?,
      TimePeriodQualifier: json['TimePeriodQualifier'] as String?,
      Procedure: json['Procedure'] as String?,
      PlaceOfService: json['PlaceOfService'] as String?,
      Date: (json['Date'] as List<dynamic>?)
          ?.map((e) => Date_Type.fromJson(e as Map<String, dynamic>))
          .toList(),
      Message:
          (json['Message'] as List<dynamic>?)?.map((e) => e as String).toList(),
      Identifications: (json['Identifications'] as List<dynamic>?)
          ?.map((e) => Identification_Type.fromJson(e as Map<String, dynamic>))
          .toList(),
      BenefitEntities: (json['BenefitEntities'] as List<dynamic>?)
          ?.map((e) => EDI271EligibilityBenefitEntity.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      HealthCareServiceDeliveries:
          (json['HealthCareServiceDeliveries'] as List<dynamic>?)
              ?.map((e) => EDI271HealthCareServiveDelivery.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$EligibilityDetailsToJson(EligibilityDetails instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AuthorizationOrCertificationRequired',
      instance.AuthorizationOrCertificationRequired);
  writeNotNull('EligibilityOrBenefit', instance.EligibilityOrBenefit);
  writeNotNull('CoverageLevel', instance.CoverageLevel);
  writeNotNull('InsuranceType', instance.InsuranceType);
  writeNotNull('MonetaryAmount', instance.MonetaryAmount);
  writeNotNull('Percent', instance.Percent);
  writeNotNull('PlanCoverageDescription', instance.PlanCoverageDescription);
  writeNotNull('PlanNetworkIndicator', instance.PlanNetworkIndicator);
  writeNotNull('QuantityQualifier', instance.QuantityQualifier);
  writeNotNull('Quantity', instance.Quantity);
  writeNotNull('TimePeriodQualifier', instance.TimePeriodQualifier);
  writeNotNull('Procedure', instance.Procedure);
  writeNotNull('PlaceOfService', instance.PlaceOfService);
  writeNotNull('Date', instance.Date?.map((e) => e.toJson()).toList());
  writeNotNull('Message', instance.Message);
  writeNotNull('Identifications',
      instance.Identifications?.map((e) => e.toJson()).toList());
  writeNotNull('BenefitEntities',
      instance.BenefitEntities?.map((e) => e.toJson()).toList());
  writeNotNull('HealthCareServiceDeliveries',
      instance.HealthCareServiceDeliveries?.map((e) => e.toJson()).toList());
  return val;
}

EDI271EligibilityBenefitEntity _$EDI271EligibilityBenefitEntityFromJson(
        Map<String, dynamic> json) =>
    EDI271EligibilityBenefitEntity(
      Address1: json['Address1'] as String?,
      Address2: json['Address2'] as String?,
      City: json['City'] as String?,
      CommunicationNumber: (json['CommunicationNumber'] as List<dynamic>?)
          ?.map((e) =>
              CommunicationNumberType.fromJson(e as Map<String, dynamic>))
          .toList(),
      EntityType: json['EntityType'] as String?,
      Firstname: json['Firstname'] as String?,
      IdentificationCode: json['IdentificationCode'] as String?,
      IdentificationType: json['IdentificationType'] as String?,
      Lastname_R: json['Lastname_R'] as String?,
      Middlename: json['Middlename'] as String?,
      State: json['State'] as String?,
      Suffix: json['Suffix'] as String?,
      Zip: json['Zip'] as String?,
    );

Map<String, dynamic> _$EDI271EligibilityBenefitEntityToJson(
    EDI271EligibilityBenefitEntity instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('Address1', instance.Address1);
  writeNotNull('Address2', instance.Address2);
  writeNotNull('City', instance.City);
  writeNotNull('CommunicationNumber',
      instance.CommunicationNumber?.map((e) => e.toJson()).toList());
  writeNotNull('EntityType', instance.EntityType);
  writeNotNull('Firstname', instance.Firstname);
  writeNotNull('IdentificationCode', instance.IdentificationCode);
  writeNotNull('IdentificationType', instance.IdentificationType);
  writeNotNull('Lastname_R', instance.Lastname_R);
  writeNotNull('Middlename', instance.Middlename);
  writeNotNull('State', instance.State);
  writeNotNull('Suffix', instance.Suffix);
  writeNotNull('Zip', instance.Zip);
  return val;
}

EDI271HealthCareServiveDelivery _$EDI271HealthCareServiveDeliveryFromJson(
        Map<String, dynamic> json) =>
    EDI271HealthCareServiveDelivery(
      QuantityQualifier: json['QuantityQualifier'] as String?,
      TotalQuantity: json['TotalQuantity'] as String?,
      MeasurementUnit: json['MeasurementUnit'] as String?,
      MeasurementPeriod: json['MeasurementPeriod'] as String?,
      TimePeriodQualifier: json['TimePeriodQualifier'] as String?,
      TotalNumberOfPeriods: json['TotalNumberOfPeriods'] as String?,
      DeliveryFrequency: json['DeliveryFrequency'] as String?,
      DeliveryPatternTime: json['DeliveryPatternTime'] as String?,
    );

Map<String, dynamic> _$EDI271HealthCareServiveDeliveryToJson(
    EDI271HealthCareServiveDelivery instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('QuantityQualifier', instance.QuantityQualifier);
  writeNotNull('TotalQuantity', instance.TotalQuantity);
  writeNotNull('MeasurementUnit', instance.MeasurementUnit);
  writeNotNull('MeasurementPeriod', instance.MeasurementPeriod);
  writeNotNull('TimePeriodQualifier', instance.TimePeriodQualifier);
  writeNotNull('TotalNumberOfPeriods', instance.TotalNumberOfPeriods);
  writeNotNull('DeliveryFrequency', instance.DeliveryFrequency);
  writeNotNull('DeliveryPatternTime', instance.DeliveryPatternTime);
  return val;
}

PreventiveService _$PreventiveServiceFromJson(Map<String, dynamic> json) =>
    PreventiveService(
      ProcedureCode: json['ProcedureCode'] as String?,
      TechnicalEligibleDate: json['TechnicalEligibleDate'] as String?,
      ProfessionalEligibleDate: json['ProfessionalEligibleDate'] as String?,
      Benefits: (json['Benefits'] as List<dynamic>?)
          ?.map((e) => PreventivBenefits.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PreventiveServiceToJson(PreventiveService instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('ProcedureCode', instance.ProcedureCode);
  writeNotNull('TechnicalEligibleDate', instance.TechnicalEligibleDate);
  writeNotNull('ProfessionalEligibleDate', instance.ProfessionalEligibleDate);
  writeNotNull('Benefits', instance.Benefits?.map((e) => e.toJson()).toList());
  return val;
}

PreventivBenefits _$PreventivBenefitsFromJson(Map<String, dynamic> json) =>
    PreventivBenefits(
      EligibilityOrBenefit: json['EligibilityOrBenefit'] as String?,
      InsuranceType: json['InsuranceType'] as String?,
      Date: (json['Date'] as List<dynamic>?)
          ?.map((e) => Date_Type.fromJson(e as Map<String, dynamic>))
          .toList(),
      TimePeriodQualifier: json['TimePeriodQualifier'] as String?,
      MonetaryAmount: json['MonetaryAmount'] as String?,
      Percent: json['Percent'] as String?,
    );

Map<String, dynamic> _$PreventivBenefitsToJson(PreventivBenefits instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('EligibilityOrBenefit', instance.EligibilityOrBenefit);
  writeNotNull('InsuranceType', instance.InsuranceType);
  writeNotNull('Date', instance.Date?.map((e) => e.toJson()).toList());
  writeNotNull('TimePeriodQualifier', instance.TimePeriodQualifier);
  writeNotNull('MonetaryAmount', instance.MonetaryAmount);
  writeNotNull('Percent', instance.Percent);
  return val;
}

PayersInfo _$PayersInfoFromJson(Map<String, dynamic> json) => PayersInfo(
      PrimaryPayer: json['PrimaryPayer'] as String?,
      Payer: json['Payer'] as String?,
      SecondaryPayer: json['SecondaryPayer'] as String?,
      PlanSponsor: json['PlanSponsor'] as String?,
      IndependentPhysiciansAssociation_IPA:
          json['IndependentPhysiciansAssociation_IPA'] as String?,
      WorkersCompensation: json['WorkersCompensation'] as String?,
      ContractedServiceProvider: json['ContractedServiceProvider'] as String?,
      IPAStartDate: json['IPAStartDate'] as String?,
    );

Map<String, dynamic> _$PayersInfoToJson(PayersInfo instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('PrimaryPayer', instance.PrimaryPayer);
  writeNotNull('Payer', instance.Payer);
  writeNotNull('SecondaryPayer', instance.SecondaryPayer);
  writeNotNull('PlanSponsor', instance.PlanSponsor);
  writeNotNull('IndependentPhysiciansAssociation_IPA',
      instance.IndependentPhysiciansAssociation_IPA);
  writeNotNull('WorkersCompensation', instance.WorkersCompensation);
  writeNotNull('ContractedServiceProvider', instance.ContractedServiceProvider);
  writeNotNull('IPAStartDate', instance.IPAStartDate);
  return val;
}

Miscellaneous _$MiscellaneousFromJson(Map<String, dynamic> json) =>
    Miscellaneous(
      RemainingSpendDown: json['RemainingSpendDown'] as String?,
      IsNPIInNetwork: json['IsNPIInNetwork'] as String?,
      MemberID: json['MemberID'] as String?,
    );

Map<String, dynamic> _$MiscellaneousToJson(Miscellaneous instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('RemainingSpendDown', instance.RemainingSpendDown);
  writeNotNull('IsNPIInNetwork', instance.IsNPIInNetwork);
  writeNotNull('MemberID', instance.MemberID);
  return val;
}

PlanCoverageSummary _$PlanCoverageSummaryFromJson(Map<String, dynamic> json) =>
    PlanCoverageSummary(
      Status: json['Status'] as String?,
      EffectiveDate: json['EffectiveDate'] as String?,
      ExpiryDate: json['ExpiryDate'] as String?,
      PlanName: json['PlanName'] as String?,
      PolicyType: json['PolicyType'] as String?,
      GroupNumber: json['GroupNumber'] as String?,
      GroupName: json['GroupName'] as String?,
      PlanNetworkID: json['PlanNetworkID'] as String?,
      PlanNetworkName: json['PlanNetworkName'] as String?,
      SubscriberRelationship: json['SubscriberRelationship'] as String?,
      PlanNumber: json['PlanNumber'] as String?,
      HRAorHSALimitationsRemaining:
          json['HRAorHSALimitationsRemaining'] as String?,
      LastUpdatedDateOfEDI: json['LastUpdatedDateOfEDI'] as String?,
      PatientGender: json['PatientGender'] as String?,
      BenefitPlanCode: json['BenefitPlanCode'] as String?,
    );

Map<String, dynamic> _$PlanCoverageSummaryToJson(PlanCoverageSummary instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('Status', instance.Status);
  writeNotNull('EffectiveDate', instance.EffectiveDate);
  writeNotNull('ExpiryDate', instance.ExpiryDate);
  writeNotNull('PlanName', instance.PlanName);
  writeNotNull('PolicyType', instance.PolicyType);
  writeNotNull('GroupNumber', instance.GroupNumber);
  writeNotNull('GroupName', instance.GroupName);
  writeNotNull('PlanNetworkID', instance.PlanNetworkID);
  writeNotNull('PlanNetworkName', instance.PlanNetworkName);
  writeNotNull('SubscriberRelationship', instance.SubscriberRelationship);
  writeNotNull('PlanNumber', instance.PlanNumber);
  writeNotNull(
      'HRAorHSALimitationsRemaining', instance.HRAorHSALimitationsRemaining);
  writeNotNull('LastUpdatedDateOfEDI', instance.LastUpdatedDateOfEDI);
  writeNotNull('PatientGender', instance.PatientGender);
  writeNotNull('BenefitPlanCode', instance.BenefitPlanCode);
  return val;
}

DeductibleAndOOP _$DeductibleAndOOPFromJson(Map<String, dynamic> json) =>
    DeductibleAndOOP(
      IndividualDeductibleInNet: json['IndividualDeductibleInNet'] == null
          ? null
          : Details.fromJson(
              json['IndividualDeductibleInNet'] as Map<String, dynamic>),
      IndividualDeductibleOutNet: json['IndividualDeductibleOutNet'] == null
          ? null
          : Details.fromJson(
              json['IndividualDeductibleOutNet'] as Map<String, dynamic>),
      IndividualDeductibleRemainingInNet:
          json['IndividualDeductibleRemainingInNet'] == null
              ? null
              : Details.fromJson(json['IndividualDeductibleRemainingInNet']
                  as Map<String, dynamic>),
      IndividualDeductibleRemainingOutNet:
          json['IndividualDeductibleRemainingOutNet'] == null
              ? null
              : Details.fromJson(json['IndividualDeductibleRemainingOutNet']
                  as Map<String, dynamic>),
      FamilyDeductibleInNet: json['FamilyDeductibleInNet'] == null
          ? null
          : Details.fromJson(
              json['FamilyDeductibleInNet'] as Map<String, dynamic>),
      FamilyDeductibleOutNet: json['FamilyDeductibleOutNet'] == null
          ? null
          : Details.fromJson(
              json['FamilyDeductibleOutNet'] as Map<String, dynamic>),
      FamilyDeductibleRemainingInNet: json['FamilyDeductibleRemainingInNet'] ==
              null
          ? null
          : Details.fromJson(
              json['FamilyDeductibleRemainingInNet'] as Map<String, dynamic>),
      FamilyDeductibleRemainingOutNet:
          json['FamilyDeductibleRemainingOutNet'] == null
              ? null
              : Details.fromJson(json['FamilyDeductibleRemainingOutNet']
                  as Map<String, dynamic>),
      IndividualOOP_InNet: json['IndividualOOP_InNet'] == null
          ? null
          : Details.fromJson(
              json['IndividualOOP_InNet'] as Map<String, dynamic>),
      IndividualOOP_OutNet: json['IndividualOOP_OutNet'] == null
          ? null
          : Details.fromJson(
              json['IndividualOOP_OutNet'] as Map<String, dynamic>),
      IndividualOOPRemainingInNet: json['IndividualOOPRemainingInNet'] == null
          ? null
          : Details.fromJson(
              json['IndividualOOPRemainingInNet'] as Map<String, dynamic>),
      IndividualOOPRemainingOutNet: json['IndividualOOPRemainingOutNet'] == null
          ? null
          : Details.fromJson(
              json['IndividualOOPRemainingOutNet'] as Map<String, dynamic>),
      FamilyOOPInNet: json['FamilyOOPInNet'] == null
          ? null
          : Details.fromJson(json['FamilyOOPInNet'] as Map<String, dynamic>),
      FamilyOOPOutNet: json['FamilyOOPOutNet'] == null
          ? null
          : Details.fromJson(json['FamilyOOPOutNet'] as Map<String, dynamic>),
      FamilyOOPRemainingInNet: json['FamilyOOPRemainingInNet'] == null
          ? null
          : Details.fromJson(
              json['FamilyOOPRemainingInNet'] as Map<String, dynamic>),
      FamilyOOPRemainingOutNet: json['FamilyOOPRemainingOutNet'] == null
          ? null
          : Details.fromJson(
              json['FamilyOOPRemainingOutNet'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DeductibleAndOOPToJson(DeductibleAndOOP instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('IndividualDeductibleInNet',
      instance.IndividualDeductibleInNet?.toJson());
  writeNotNull('IndividualDeductibleOutNet',
      instance.IndividualDeductibleOutNet?.toJson());
  writeNotNull('IndividualDeductibleRemainingInNet',
      instance.IndividualDeductibleRemainingInNet?.toJson());
  writeNotNull('IndividualDeductibleRemainingOutNet',
      instance.IndividualDeductibleRemainingOutNet?.toJson());
  writeNotNull(
      'FamilyDeductibleInNet', instance.FamilyDeductibleInNet?.toJson());
  writeNotNull(
      'FamilyDeductibleOutNet', instance.FamilyDeductibleOutNet?.toJson());
  writeNotNull('FamilyDeductibleRemainingInNet',
      instance.FamilyDeductibleRemainingInNet?.toJson());
  writeNotNull('FamilyDeductibleRemainingOutNet',
      instance.FamilyDeductibleRemainingOutNet?.toJson());
  writeNotNull('IndividualOOP_InNet', instance.IndividualOOP_InNet?.toJson());
  writeNotNull('IndividualOOP_OutNet', instance.IndividualOOP_OutNet?.toJson());
  writeNotNull('IndividualOOPRemainingInNet',
      instance.IndividualOOPRemainingInNet?.toJson());
  writeNotNull('IndividualOOPRemainingOutNet',
      instance.IndividualOOPRemainingOutNet?.toJson());
  writeNotNull('FamilyOOPInNet', instance.FamilyOOPInNet?.toJson());
  writeNotNull('FamilyOOPOutNet', instance.FamilyOOPOutNet?.toJson());
  writeNotNull(
      'FamilyOOPRemainingInNet', instance.FamilyOOPRemainingInNet?.toJson());
  writeNotNull(
      'FamilyOOPRemainingOutNet', instance.FamilyOOPRemainingOutNet?.toJson());
  return val;
}

PCPAuthSummary _$PCPAuthSummaryFromJson(Map<String, dynamic> json) =>
    PCPAuthSummary(
      PrimaryCareProviderName: json['PrimaryCareProviderName'] as String?,
      PCPStartDate: json['PCPStartDate'] as String?,
      PrimaryCareProviderPhoneNumber:
          json['PrimaryCareProviderPhoneNumber'] as String?,
      InNetHBPCAuthorizationInfo: json['InNetHBPCAuthorizationInfo'] as String?,
      OutNetHBPCAuthorizationInfo:
          json['OutNetHBPCAuthorizationInfo'] as String?,
      UtilizationManagementOrganizationName:
          json['UtilizationManagementOrganizationName'] as String?,
      UMOTelephone: json['UMOTelephone'] as String?,
      CapitationFacilityName: json['CapitationFacilityName'] as String?,
    );

Map<String, dynamic> _$PCPAuthSummaryToJson(PCPAuthSummary instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('PrimaryCareProviderName', instance.PrimaryCareProviderName);
  writeNotNull('PCPStartDate', instance.PCPStartDate);
  writeNotNull('PrimaryCareProviderPhoneNumber',
      instance.PrimaryCareProviderPhoneNumber);
  writeNotNull(
      'InNetHBPCAuthorizationInfo', instance.InNetHBPCAuthorizationInfo);
  writeNotNull(
      'OutNetHBPCAuthorizationInfo', instance.OutNetHBPCAuthorizationInfo);
  writeNotNull('UtilizationManagementOrganizationName',
      instance.UtilizationManagementOrganizationName);
  writeNotNull('UMOTelephone', instance.UMOTelephone);
  writeNotNull('CapitationFacilityName', instance.CapitationFacilityName);
  return val;
}

PracticeTypeSummary _$PracticeTypeSummaryFromJson(Map<String, dynamic> json) =>
    PracticeTypeSummary(
      CoPayInNet: json['CoPayInNet'] == null
          ? null
          : Details.fromJson(json['CoPayInNet'] as Map<String, dynamic>),
      CoInsInNet: json['CoInsInNet'] == null
          ? null
          : Details.fromJson(json['CoInsInNet'] as Map<String, dynamic>),
      CoPayOutNet: json['CoPayOutNet'] == null
          ? null
          : Details.fromJson(json['CoPayOutNet'] as Map<String, dynamic>),
      CoInsOutNet: json['CoInsOutNet'] == null
          ? null
          : Details.fromJson(json['CoInsOutNet'] as Map<String, dynamic>),
      UMOName: json['UMOName'] as String?,
      UMOTelephone: json['UMOTelephone'] as String?,
      InNetServiceAuthorizationInfo:
          json['InNetServiceAuthorizationInfo'] as String?,
      OutNetServiceAuthorizationInfo:
          json['OutNetServiceAuthorizationInfo'] as String?,
    );

Map<String, dynamic> _$PracticeTypeSummaryToJson(PracticeTypeSummary instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('CoPayInNet', instance.CoPayInNet?.toJson());
  writeNotNull('CoInsInNet', instance.CoInsInNet?.toJson());
  writeNotNull('CoPayOutNet', instance.CoPayOutNet?.toJson());
  writeNotNull('CoInsOutNet', instance.CoInsOutNet?.toJson());
  writeNotNull('UMOName', instance.UMOName);
  writeNotNull('UMOTelephone', instance.UMOTelephone);
  writeNotNull(
      'InNetServiceAuthorizationInfo', instance.InNetServiceAuthorizationInfo);
  writeNotNull('OutNetServiceAuthorizationInfo',
      instance.OutNetServiceAuthorizationInfo);
  return val;
}

OpthalmologySummary _$OpthalmologySummaryFromJson(Map<String, dynamic> json) =>
    OpthalmologySummary(
      VisionPayerName: json['VisionPayerName'] as String?,
    );

Map<String, dynamic> _$OpthalmologySummaryToJson(OpthalmologySummary instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('VisionPayerName', instance.VisionPayerName);
  return val;
}

TherapySummary _$TherapySummaryFromJson(Map<String, dynamic> json) =>
    TherapySummary(
      TherapyVisitsLimitationsInNet: json['TherapyVisitsLimitationsInNet'] ==
              null
          ? null
          : Details.fromJson(
              json['TherapyVisitsLimitationsInNet'] as Map<String, dynamic>),
      TherapyVisitsLimitationsOutNet: json['TherapyVisitsLimitationsOutNet'] ==
              null
          ? null
          : Details.fromJson(
              json['TherapyVisitsLimitationsOutNet'] as Map<String, dynamic>),
      TherapyVisitsRemainingInNet: json['TherapyVisitsRemainingInNet'] == null
          ? null
          : Details.fromJson(
              json['TherapyVisitsRemainingInNet'] as Map<String, dynamic>),
      TherapyVisitsLRemainingOutNet: json['TherapyVisitsLRemainingOutNet'] ==
              null
          ? null
          : Details.fromJson(
              json['TherapyVisitsLRemainingOutNet'] as Map<String, dynamic>),
      TherapyAmountLimitationsInNet: json['TherapyAmountLimitationsInNet'] ==
              null
          ? null
          : Details.fromJson(
              json['TherapyAmountLimitationsInNet'] as Map<String, dynamic>),
      TherapyAmountLimitationsOutNet: json['TherapyAmountLimitationsOutNet'] ==
              null
          ? null
          : Details.fromJson(
              json['TherapyAmountLimitationsOutNet'] as Map<String, dynamic>),
      TherapyAmountRemainingInNet: json['TherapyAmountRemainingInNet'] == null
          ? null
          : Details.fromJson(
              json['TherapyAmountRemainingInNet'] as Map<String, dynamic>),
      TherapyAmountRemainingOutNet: json['TherapyAmountRemainingOutNet'] == null
          ? null
          : Details.fromJson(
              json['TherapyAmountRemainingOutNet'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TherapySummaryToJson(TherapySummary instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('TherapyVisitsLimitationsInNet',
      instance.TherapyVisitsLimitationsInNet?.toJson());
  writeNotNull('TherapyVisitsLimitationsOutNet',
      instance.TherapyVisitsLimitationsOutNet?.toJson());
  writeNotNull('TherapyVisitsRemainingInNet',
      instance.TherapyVisitsRemainingInNet?.toJson());
  writeNotNull('TherapyVisitsLRemainingOutNet',
      instance.TherapyVisitsLRemainingOutNet?.toJson());
  writeNotNull('TherapyAmountLimitationsInNet',
      instance.TherapyAmountLimitationsInNet?.toJson());
  writeNotNull('TherapyAmountLimitationsOutNet',
      instance.TherapyAmountLimitationsOutNet?.toJson());
  writeNotNull('TherapyAmountRemainingInNet',
      instance.TherapyAmountRemainingInNet?.toJson());
  writeNotNull('TherapyAmountRemainingOutNet',
      instance.TherapyAmountRemainingOutNet?.toJson());
  return val;
}

VisitLimitationsSummary _$VisitLimitationsSummaryFromJson(
        Map<String, dynamic> json) =>
    VisitLimitationsSummary(
      VisitsLimitationsInNet: json['VisitsLimitationsInNet'] == null
          ? null
          : Details.fromJson(
              json['VisitsLimitationsInNet'] as Map<String, dynamic>),
      VisitsLimitationsOutNet: json['VisitsLimitationsOutNet'] == null
          ? null
          : Details.fromJson(
              json['VisitsLimitationsOutNet'] as Map<String, dynamic>),
      VisitsRemainingInNet: json['VisitsRemainingInNet'] == null
          ? null
          : Details.fromJson(
              json['VisitsRemainingInNet'] as Map<String, dynamic>),
      VisitsLRemainingOutNet: json['VisitsLRemainingOutNet'] == null
          ? null
          : Details.fromJson(
              json['VisitsLRemainingOutNet'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VisitLimitationsSummaryToJson(
    VisitLimitationsSummary instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'VisitsLimitationsInNet', instance.VisitsLimitationsInNet?.toJson());
  writeNotNull(
      'VisitsLimitationsOutNet', instance.VisitsLimitationsOutNet?.toJson());
  writeNotNull('VisitsRemainingInNet', instance.VisitsRemainingInNet?.toJson());
  writeNotNull(
      'VisitsLRemainingOutNet', instance.VisitsLRemainingOutNet?.toJson());
  return val;
}

MedicareInfoSummary _$MedicareInfoSummaryFromJson(Map<String, dynamic> json) =>
    MedicareInfoSummary(
      AdvantagePayerName: json['AdvantagePayerName'] as String?,
      AdvantagePolicyType: json['AdvantagePolicyType'] as String?,
      AdvantageCOBStartDate: json['AdvantageCOBStartDate'] as String?,
      AdvantageCOBEndDate: json['AdvantageCOBEndDate'] as String?,
      HospiceQty: json['HospiceQty'] as String?,
      HospiceStartDate: json['HospiceStartDate'] as String?,
      HospiceEndDate: json['HospiceEndDate'] as String?,
      HomeHealthCareStartDate: json['HomeHealthCareStartDate'] as String?,
      HomeHealthCareEndDate: json['HomeHealthCareEndDate'] as String?,
      MedicareCoInsurance: json['MedicareCoInsurance'] == null
          ? null
          : Details.fromJson(
              json['MedicareCoInsurance'] as Map<String, dynamic>),
      PharmacyPayerName: json['PharmacyPayerName'] as String?,
      PharmacyPayerPlanNumber: json['PharmacyPayerPlanNumber'] as String?,
      PharmacyPayerPlanNetworkID: json['PharmacyPayerPlanNetworkID'] as String?,
      SkilledNursingCareStartDate:
          json['SkilledNursingCareStartDate'] as String?,
      SkilledNursingCareEndDate: json['SkilledNursingCareEndDate'] as String?,
      WCAutoInjuryLiabilityPayerName:
          json['WCAutoInjuryLiabilityPayerName'] as String?,
      WCAutoInjuryLiabilityPolicyType:
          json['WCAutoInjuryLiabilityPolicyType'] as String?,
      WCAutoInjuryLiabilityCOBStartDate:
          json['WCAutoInjuryLiabilityCOBStartDate'] as String?,
      WCAutoInjuryLiabilityCOBEndDate:
          json['WCAutoInjuryLiabilityCOBEndDate'] as String?,
      QMBPolicyType: json['QMBPolicyType'] as String?,
      Part_A_Deductible: json['Part_A_Deductible'] == null
          ? null
          : Details.fromJson(json['Part_A_Deductible'] as Map<String, dynamic>),
      Part_A_Deductible_Remaining: json['Part_A_Deductible_Remaining'] == null
          ? null
          : Details.fromJson(
              json['Part_A_Deductible_Remaining'] as Map<String, dynamic>),
      Part_B_Deductible: json['Part_B_Deductible'] == null
          ? null
          : Details.fromJson(json['Part_B_Deductible'] as Map<String, dynamic>),
      Part_B_Deductible_Remaining: json['Part_B_Deductible_Remaining'] == null
          ? null
          : Details.fromJson(
              json['Part_B_Deductible_Remaining'] as Map<String, dynamic>),
      OT_UsedAmount: json['OT_UsedAmount'] == null
          ? null
          : Details.fromJson(json['OT_UsedAmount'] as Map<String, dynamic>),
      PT_SLP_UsedAmount: json['PT_SLP_UsedAmount'] == null
          ? null
          : Details.fromJson(json['PT_SLP_UsedAmount'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MedicareInfoSummaryToJson(MedicareInfoSummary instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AdvantagePayerName', instance.AdvantagePayerName);
  writeNotNull('AdvantagePolicyType', instance.AdvantagePolicyType);
  writeNotNull('AdvantageCOBStartDate', instance.AdvantageCOBStartDate);
  writeNotNull('AdvantageCOBEndDate', instance.AdvantageCOBEndDate);
  writeNotNull('HospiceQty', instance.HospiceQty);
  writeNotNull('HospiceStartDate', instance.HospiceStartDate);
  writeNotNull('HospiceEndDate', instance.HospiceEndDate);
  writeNotNull('HomeHealthCareStartDate', instance.HomeHealthCareStartDate);
  writeNotNull('HomeHealthCareEndDate', instance.HomeHealthCareEndDate);
  writeNotNull('MedicareCoInsurance', instance.MedicareCoInsurance?.toJson());
  writeNotNull('PharmacyPayerName', instance.PharmacyPayerName);
  writeNotNull('PharmacyPayerPlanNumber', instance.PharmacyPayerPlanNumber);
  writeNotNull(
      'PharmacyPayerPlanNetworkID', instance.PharmacyPayerPlanNetworkID);
  writeNotNull(
      'SkilledNursingCareStartDate', instance.SkilledNursingCareStartDate);
  writeNotNull('SkilledNursingCareEndDate', instance.SkilledNursingCareEndDate);
  writeNotNull('WCAutoInjuryLiabilityPayerName',
      instance.WCAutoInjuryLiabilityPayerName);
  writeNotNull('WCAutoInjuryLiabilityPolicyType',
      instance.WCAutoInjuryLiabilityPolicyType);
  writeNotNull('WCAutoInjuryLiabilityCOBStartDate',
      instance.WCAutoInjuryLiabilityCOBStartDate);
  writeNotNull('WCAutoInjuryLiabilityCOBEndDate',
      instance.WCAutoInjuryLiabilityCOBEndDate);
  writeNotNull('QMBPolicyType', instance.QMBPolicyType);
  writeNotNull('Part_A_Deductible', instance.Part_A_Deductible?.toJson());
  writeNotNull('Part_A_Deductible_Remaining',
      instance.Part_A_Deductible_Remaining?.toJson());
  writeNotNull('Part_B_Deductible', instance.Part_B_Deductible?.toJson());
  writeNotNull('Part_B_Deductible_Remaining',
      instance.Part_B_Deductible_Remaining?.toJson());
  writeNotNull('OT_UsedAmount', instance.OT_UsedAmount?.toJson());
  writeNotNull('PT_SLP_UsedAmount', instance.PT_SLP_UsedAmount?.toJson());
  return val;
}

Details _$DetailsFromJson(Map<String, dynamic> json) => Details(
      Notes: json['Notes'] as String?,
      Value: json['Value'] as String?,
    );

Map<String, dynamic> _$DetailsToJson(Details instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('Value', instance.Value);
  writeNotNull('Notes', instance.Notes);
  return val;
}
