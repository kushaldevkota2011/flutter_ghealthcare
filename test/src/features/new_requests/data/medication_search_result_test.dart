import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:dme_pao/dme_pao.dart';

import '../../../../fixtures/fixtures_reader.dart';

void main() {
  group('Bundle creation test', () {
    test("fromJson test", () {
      final json = jsonDecode(fixture('medication_search_result.json'));

      // final bundle = Bundle.fromJson(json);

      for (var resource in json['entry']) {
        RConcept.fromJson(resource['resource']);
      }

      // debugPrint(jsonEncode(bundle.toJson()));
    });
  });
}
