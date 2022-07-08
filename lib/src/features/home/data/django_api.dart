import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:raidon_fhir/injector_container.dart';

Future<dynamic> connectToDjango(
  String name,
  DateTime? injuryDate,
  DateTime? dobDate,
  String claimNumber,
  String employer,
) async {
  try {
    final data = jsonEncode({
      "name": name,
      "date_of_injury": injuryDate != null
          ? DateFormat('yyyy-MM-dd').format(injuryDate).toString()
          : null,
      "date_of_birth": dobDate != null
          ? DateFormat('yyyy-MM-dd').format(dobDate).toString()
          : null,
      "claim_number": claimNumber,
      "employer": employer,
    });

    final response = await sl.get<Dio>().post(
          'https://cors-anywhere.herokuapp.com/http://54.177.204.156:8000/api/rfa/employeeinfo/',
          data: data,
          options: Options(headers: {'Content-Type': 'application/json'}),
        );

    if (response.statusCode == 201) {
      return response.data;
    }
    throw NullThrownError();
  } catch (e) {
    debugPrint("$e");
    return "Error Occured";
  }
}
