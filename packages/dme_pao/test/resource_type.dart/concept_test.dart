import 'dart:convert';

import 'package:dme_pao/resource_type/concept.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../fixtures/fixture_reader.dart';

void main() {
  group("RConcept ", () {
    test("fromJson", () {
      final json = jsonDecode(fixture('concept.json'));

      final concept = RConcept.fromJson(json);

      debugPrint(jsonEncode(concept.toJson()));
    });
  });
}
