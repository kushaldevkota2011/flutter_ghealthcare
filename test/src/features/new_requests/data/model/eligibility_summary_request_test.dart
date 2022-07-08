import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:raidon_fhir/src/features/new_requests/data/data.dart';

import '../../../../../fixtures/fixtures_reader.dart';

void main() {
  group("EligibilitySummaryRequest", () {
    test("fromJson", () {
      final json = jsonDecode(fixture('eligibility_summary_request.json'));

      final eligibility = EligibilitySummaryRequest.fromJson(json);

      debugPrint(jsonEncode(eligibility.toJson()));

      expect(eligibility.payerCode, '00192');
    });
  });
}
