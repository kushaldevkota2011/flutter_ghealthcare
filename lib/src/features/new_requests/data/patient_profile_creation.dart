import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:fhir/r5.dart';
import 'package:fhir_us_core_extension/fhir_us_core_extension.dart';
import 'package:flutter/material.dart';
import 'package:raidon_fhir/src/core/core.dart';

import '../../../../injector_container.dart';

/// url: https://rideon.aidbox.app/fhir/Patient/
///
Future<Patient> patientResourceCreation(RPatient patient) async {
  debugPrint(jsonEncode(patient.toJson()));
  try {
    final response = await sl.get<Dio>().post(
          '$rideonAidboxUsCoreHome' '/Patient/',
          data: jsonEncode(patient.toJson()),
          options: Options(
            headers: {
              HttpHeaders.authorizationHeader: 'Basic ' +
                  base64Encode(
                    utf8.encode('$userName:$password'),
                  ),
            },
          ),
        );
    if (response.statusCode == 400) {
      throw ServerException();
    } else {
      return Patient.fromJson((response.data));
    }
  } on DioError catch (e) {
    debugPrint("patient error :${e.message}");
    throw ServerException();
  }
}
