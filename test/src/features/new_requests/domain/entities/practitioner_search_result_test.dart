import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:raidon_fhir/src/features/new_requests/domain/entities/practitioner_search_result.dart';

import '../../../../../fixtures/fixtures_reader.dart';

void main() {
  group('PractitionerSearcgResult Model ', () {
    test("fromJson test", () {
      final jsonData = jsonDecode(fixture('practitioner_search_result.json'));
      final result = PractitionerSearchResult.fromJson(jsonData);

      expect(result.basic?.name, "BEHEN SUSAN");
    });
  });
}
