import 'dart:convert';

import 'package:fhir/r5.dart';
import 'package:fhir_us_core_extension/resources_type/resources_type.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../fixtures/fixture_reader.dart';

void main() {
  group('Resources Type Patient Resource', () {
    //! to json
    test('toJson test', () {
      final patient = RPatient.patientUsCore(
        gender: PatientGender.male,
        identifier: [],
        name: [
          HumanName(family: 'family', given: ['Given'])
        ],
        usCoreBirthSex: PatientUsCoreBirthSex.female,
        sexualOrientation: PatientSexualOrientation.asexual_person,
        usCoreEthnicity: PatientUsCoreEthnicity.hispanic_or_latino,
        usCoreRace: PatientUsCoreRace.american_indian_or_alaska_native,
        usCoreGenderIdentity:
            PatientUsCoreGenderIdentity.does_not_wish_to_disclose,
      );

      debugPrint(jsonEncode(patient.toJson()));
    });
    //! from json
    test('fromJson', () {
      final json = jsonDecode(fixture('patient.json')) as Map<String, dynamic>;
      final patient = RPatient.fromJson(json);
      debugPrint(jsonEncode(patient.toJson()));
      expect(patient.toJson(), json);
    });

    test("fromJson", () {
      final json =
          jsonDecode(fixture('patient_us_core.json')) as Map<String, dynamic>;
      final patient = RPatient.fromJson(json);
      debugPrint(jsonEncode(patient.toJson()));
      expect(patient.toJson(), json);
    });
  });
}
