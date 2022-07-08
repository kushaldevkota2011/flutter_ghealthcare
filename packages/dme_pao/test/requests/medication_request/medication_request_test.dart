import 'dart:convert';

import 'package:dme_pao/dme_pao.dart';
import 'package:fhir/r5.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../fixtures/fixture_reader.dart';

void main() {
  group("MedicationRequest", () {
    test("toJson", () {
      final json = jsonDecode(fixture('medication_request.json'));

      final medicationRequest = MedicationRequest.fromJson(json);

      final toJson = medicationRequest.toJson();

      debugPrint(jsonEncode(toJson));

      expect(toJson, json);
    });

    test("fromJson", () {
      final deviceRequest = RMedicationRequest.simplified(
        medicationRequestStatus: MedicationRequestStatus.active,
        medicationRequestIntent: MedicationRequestIntent.instance_order,
        medication: MedicationRequestMedication(
          codeableConcept: CodeableConcept(
            coding: [
              Coding(
                code: Code("hello"),
              ),
            ],
          ),
        ),
        subject: Reference(display: 'Patient/12345'),
      );

      debugPrint(jsonEncode(deviceRequest.toJson()));
    });

    test("simplified", () {
      final deviceRequest = RDeviceRequest.simplified(
        requestIntent: RequestIntent.filler_order,
        requestPriority: RequestPriority.asap,
        requestStatus: RequestStatus.active,
        code: DeviceRequested(
          codeableConcept: CodeableConcept(
            coding: [
              Coding(
                code: Code('test'),
                display: 'test',
              ),
            ],
          ),
        ),
        subject: Reference(display: 'Patient/12345'),
      );

      debugPrint(jsonEncode(deviceRequest.toJson()));
    });

    test('toJson r5', () {
      final json = jsonDecode(fixture('medication_request_post.json'));

      final medication = MedicationRequest.fromJson(json);

      debugPrint(jsonEncode(medication.toJson()));
    });
  });
}
