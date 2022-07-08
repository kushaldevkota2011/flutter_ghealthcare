import 'dart:convert';

import 'package:dme_pao/dme_pao.dart';
import 'package:fhir/r5.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../fixtures/fixture_reader.dart';

void main() {
  group("DeviceRequets", () {
    test("toJson", () {
      final json = jsonDecode(fixture('device_request.json'));

      final deviceRequest = DeviceRequest.fromJson(json);

      final toJson = deviceRequest.toJson();

      expect(toJson, json);

      debugPrint(jsonEncode(deviceRequest.toJson()));
    });

    test("fromJson", () {
      final deviceRequest = RDeviceRequest(
        intent: Code('proposal'),
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
        subject: Reference(
            display: 'Patient/12345',
            identifier: Identifier(use: IdentifierUse.official, value: '1234')),
      );

      debugPrint(jsonEncode(deviceRequest.toJson()));
    });

    test("post request data", () {
      final json = jsonDecode(fixture('device_request_post.json'));

      debugPrint("$json");

      final device = DeviceRequest.fromJson(json);

      debugPrint(jsonEncode(device.toJson()));
    });

    test('device request data test', () {
      final deviceRequest = DeviceRequest(
        meta: Meta(profile: [
          Canonical(
              'http://hl7.org/fhir/us/dme-orders/StructureDefinition/PAOX-devicerequest')
        ]),
        code: CodeableReference(
          concept: CodeableConcept(
            coding: [
              Coding(
                code: Code('testing'),
              ),
            ],
          ),
        ),
        subject: Reference(display: 'testing patient'),
        intent: Code('proposal'),
      );

      debugPrint(jsonEncode(deviceRequest.toJson()));
    });
  });
}
