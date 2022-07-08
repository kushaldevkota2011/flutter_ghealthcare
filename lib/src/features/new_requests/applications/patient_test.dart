// import 'package:fhir_uscore/fhir/fhir.dart';

import 'dart:convert';

import 'package:fhir/r5.dart';
import 'package:fhir_us_core_extension/fhir_us_core_extension.dart';
import 'package:flutter/material.dart';

void main() => patientTest();

void patientTest() {
  final patient = RPatient.patientUsCore(
    identifier: [],
    address: [],
    birthDate: Date('2022-11-12'),
    gender: PatientGender.female,
    communication: [
      PatientCommunication(
          language: CodeableConcept(coding: [], text: 'English')),
    ],
    telecom: [
      ContactPoint(system: ContactPointSystem.email, value: 'test@gmail.com'),
    ],
    name: [
      HumanName(family: 'Test', given: ['Mintu lala'])
    ],
    usCoreBirthSex: PatientUsCoreBirthSex.female,
    usCoreRace: PatientUsCoreRace.american_indian_or_alaska_native,
    usCoreDetailedEthnicity: [PatientUsCoreDetailedEthnicity.argentinean],
    usCoreDetailedRace: [PatientUsCoreDetailedRace.abenaki],
  );

  debugPrint(jsonEncode(patient.toJson()));
}

void patientContactTest() {}
