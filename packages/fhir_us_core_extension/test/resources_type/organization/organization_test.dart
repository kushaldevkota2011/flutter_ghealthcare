import 'dart:convert';

import 'package:fhir/r5.dart';
import 'package:fhir_us_core_extension/fhir_us_core_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../fixtures/fixture_reader.dart';

void main() {
  group('Organization Profile', () {
    test("fromJson", () async {
      final json = jsonDecode(fixture('organization.json'));
      final organization = ROrganization.fromJson(json);
      debugPrint(jsonEncode(organization.toJson()));
      expect(organization.toJson(), json);
    });

    test("toJson", () {
      final practitioner = ROrganization.usCore(
          identifier: [],
          name: 'GHEIT',
          npiNumber: 123456789,
          cliaNumber: 'testing',
          active: Boolean(true));

      debugPrint(practitioner.toJson().toString());
    });
  });
}
