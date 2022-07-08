import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rfa_model/models/employee_info.dart';

import '../fixtures/fixture_reader.dart';

void main() {
  group("EmployeeInfo", () {
    test("fromJson", () {
      final json = jsonDecode(fixture('employee_info.json'));
      final employeeInfo = EmployeeInfo.fromJson(json);
      debugPrint(jsonEncode(employeeInfo.toJson()));
      expect(employeeInfo.toJson(), json);
    });
  });
}
