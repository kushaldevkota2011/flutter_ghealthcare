// ignore_for_file: constant_identifier_names

import 'package:fhir/r5.dart';

enum PatientMaritalStatus {
  annulled,
  divorced,
  interlocutory,
  legally_separated,
  married,
  polygamous,
  never_married,
  domestic_partner,
  unmarried,
  widowed,
  unknown,
}

final codeableConceptFromMaritialStatus = {
  PatientMaritalStatus.annulled: CodeableConcept(
    coding: [Coding(code: Code('A'))],
    text: 'Annulled',
  ),
  PatientMaritalStatus.divorced: CodeableConcept(
    coding: [Coding(code: Code('D'))],
    text: 'Divorced',
  ),
  PatientMaritalStatus.interlocutory: CodeableConcept(
    coding: [Coding(code: Code('I'))],
    text: 'Interlocutory',
  ),
  PatientMaritalStatus.legally_separated: CodeableConcept(
    coding: [Coding(code: Code('L'))],
    text: 'Legally Separated',
  ),
  PatientMaritalStatus.married: CodeableConcept(
    coding: [Coding(code: Code('M'))],
    text: 'Married',
  ),
  PatientMaritalStatus.polygamous: CodeableConcept(
    coding: [Coding(code: Code('P'))],
    text: 'Polygamous',
  ),
  PatientMaritalStatus.never_married: CodeableConcept(
    coding: [Coding(code: Code('N'))],
    text: 'Never Married',
  ),
  PatientMaritalStatus.domestic_partner: CodeableConcept(
    coding: [Coding(code: Code('D'))],
    text: 'Domestic Partner',
  ),
  PatientMaritalStatus.unmarried: CodeableConcept(
    coding: [Coding(code: Code('U'))],
    text: 'Unmarried',
  ),
  PatientMaritalStatus.widowed: CodeableConcept(
    coding: [Coding(code: Code('W'))],
    text: 'Widowed',
  ),
  PatientMaritalStatus.unknown: CodeableConcept(
    coding: [Coding(code: Code('UNK'))],
    text: 'Unknown',
  ),
};
