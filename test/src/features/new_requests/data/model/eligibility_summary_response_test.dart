import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:raidon_fhir/src/features/new_requests/data/data.dart';

import '../../../../../fixtures/fixtures_reader.dart';

void main() {
  group("EligibilitySummaryResponse", () {
    test("fromJson", () {
      final json = jsonDecode(fixture('eligibility_summary_response.json'));

      final eligibility = EligibilitySummaryResponse.fromJson(json);

      debugPrint(jsonEncode(eligibility.toJson()));

      expect(eligibility.AddtionalInfo,
          'PLAN REQUIRES PRECERT for Some or ALL Services');
    });
  });
}
