import 'package:fhir/r5.dart';
import 'package:fhir_us_core_extension/fhir_us_core_extension.dart';

import '../../core/extensions/extensions.dart';

// ************************************
//!           birthsex
//*************************************
final _usCoreBirthSex = {
  'female': PatientUsCoreBirthSex.female,
  'male': PatientUsCoreBirthSex.male,
  'unknown': PatientUsCoreBirthSex.unknown,
  'asked_but_unknown': PatientUsCoreBirthSex.asked_but_unknown,
  'other': PatientUsCoreBirthSex.other,
};

List<String> get usCoreBirthSex => _usCoreBirthSex.keys
    .map<String>((e) => e.replaceBySpaceAndCaptilized)
    .toList();

PatientUsCoreBirthSex textToBirthSex(String text) =>
    _usCoreBirthSex[text.toLowerCase().replaceAll(' ', '_')] ??
    PatientUsCoreBirthSex.unknown;

String birthSexToText(PatientUsCoreBirthSex birthSex) =>
    birthSex.toString().split('.').last.replaceAll('_', ' ');

// ************************************
//!            gender identity
//*************************************

final _usCoreGenderIdentity = {
  'transgender_female': PatientUsCoreGenderIdentity.transgender_female,
  'tansgender_male': PatientUsCoreGenderIdentity.transgender_male,
  'female': PatientUsCoreGenderIdentity.female,
  'male': PatientUsCoreGenderIdentity.male,
  'non_binary': PatientUsCoreGenderIdentity.non_binary,
  'other': PatientUsCoreGenderIdentity.other,
  'does_not_wish_to_disclose':
      PatientUsCoreGenderIdentity.does_not_wish_to_disclose,
};

PatientUsCoreGenderIdentity textToGenderIdentity(String text) =>
    _usCoreGenderIdentity[text.toLowerCase().replaceAll(' ', '_')] ??
    PatientUsCoreGenderIdentity.does_not_wish_to_disclose;

String genderIdentityToText(PatientUsCoreGenderIdentity genderIdentity) =>
    genderIdentity.toString().split('.').last.replaceAll('_', ' ');

List<String> get genderIdentityList => _usCoreGenderIdentity.keys
    .map((e) => e.replaceBySpaceAndCaptilized)
    .toList();

// ************************************
//!            Race
//*************************************

List<String> get raceList => PatientUsCoreRace.values
    .map((e) => e.toString().split('.').last.replaceBySpaceAndCaptilized)
    .toList();

PatientUsCoreRace textToRace(String value) =>
    PatientUsCoreRace.values.firstWhere((element) =>
        element.toString().split('.').last ==
        value.toLowerCase().replaceAll(" ", '_'));

// ************************************
//!           Ethinicity
//*************************************

List<String> get ethinicityList => PatientUsCoreEthnicity.values
    .map((e) => e.toString().split('.').last.replaceBySpaceAndCaptilized)
    .toList();

PatientUsCoreEthnicity textToEthinicity(String value) =>
    PatientUsCoreEthnicity.values.firstWhere((element) =>
        element.toString().split('.').last ==
        value.toLowerCase().replaceAll(" ", '_'));

// ************************************
//!           sexual orientation
//*************************************
List<String> get sexualOrientationList => PatientSexualOrientation.values
    .map((e) => e.toString().split('.').last.replaceBySpaceAndCaptilized)
    .toList();

PatientSexualOrientation textToSexualOrientation(String value) =>
    PatientSexualOrientation.values.firstWhere((element) =>
        element.toString().split('.').last ==
        value.toLowerCase().replaceAll(" ", '_'));

// ************************************
//!           gender
//*************************************

List<String> get genderList => PatientGender.values
    .map((e) => e.toString().split('.').last.replaceBySpaceAndCaptilized)
    .toList();

PatientGender textToGender(String value) =>
    PatientGender.values.firstWhere((element) =>
        element.toString().split('.').last ==
        value.toLowerCase().replaceAll(" ", '_'));

// ************************************
//!           patient contact gender
//*************************************

List<String> get patientContactGenderList => PatientContactGender.values
    .map((e) => e.toString().split('.').last.replaceBySpaceAndCaptilized)
    .toList();

PatientContactGender textToPatientContactGender(String value) =>
    PatientContactGender.values.firstWhere((element) =>
        element.toString().split('.').last ==
        value.toLowerCase().replaceAll(" ", '_'));
