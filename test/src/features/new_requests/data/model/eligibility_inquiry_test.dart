import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:raidon_fhir/src/features/new_requests/data/data.dart';

import '../../../../../fixtures/fixtures_reader.dart';

void main() {
  group("EligibilityInquiry", () {
    test("fromJson", () {
      final json = jsonDecode(fixture('eligibility_inquiry.json'));

      final eligibility = EligibilityInquiry.fromJson(json);

      expect(eligibility.elgRequestID, 2428);
    });
  });
}
