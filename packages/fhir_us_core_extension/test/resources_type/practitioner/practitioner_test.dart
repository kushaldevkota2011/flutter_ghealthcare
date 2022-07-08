import 'dart:convert';

import 'package:fhir/r5.dart';
import 'package:fhir_us_core_extension/fhir_us_core_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../fixtures/fixture_reader.dart';

void main() {
  group('Practitioner Profile', () {
    test("fromJson", () async {
      final json = jsonDecode(fixture('practitioner.json'));
      final practitioner = RPractitioner.fromJson(json);
      debugPrint(jsonEncode(practitioner.toJson()));
      expect(practitioner.toJson(), json);
    });

    test("toJson", () {
      final practitioner = RPractitioner.usCore(
        identifier: [],
        name: [
          HumanName(family: "Family", given: ["Guy"])
        ],
        npiNumber: 123456789,
      );
      debugPrint(jsonEncode(practitioner.toJson()));
    });
  });
}
