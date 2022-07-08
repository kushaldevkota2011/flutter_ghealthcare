// http://rideon.aidbox.app/fhir/Concept?display=P

import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:raidon_fhir/injector_container.dart';
import 'package:raidon_fhir/src/core/data/data.dart';
import 'package:raidon_fhir/src/core/error/error.dart';

/// if status code is 200 it will returns String data else
/// it will returns null
Future<Map<String, dynamic>?> medicationSearch(String input,
    {bool isDevice = false, bool isCondition = false}) async {
  try {
    final response = await sl.get<Dio>().get(
          rideonAidboxHome + '/Concept',
          queryParameters: {
            'valueset': isDevice
                ? 'snomedct'
                : isCondition
                    ? 'icd'
                    : 'rxnorm',
            'display': input,
            '_total': 'none',
          },
          options: Options(
            headers: {
              HttpHeaders.authorizationHeader: 'Basic ' +
                  base64Encode(
                    utf8.encode('ravi:secret'),
                  ),
            },
          ),
        );
    if (response.statusCode != 200) {
      throw ServerException();
    }
    return response.data;
  } catch (e) {
    return null;
  }
}
