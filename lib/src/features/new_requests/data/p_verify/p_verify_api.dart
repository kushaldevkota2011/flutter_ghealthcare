import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:raidon_fhir/src/core/error/error.dart';
import 'package:raidon_fhir/src/features/new_requests/new_request.dart';

import '../../../../../injector_container.dart';

class PVerifyAPI {
  PVerifyAPI();

  static const _apiHome = 'https://api.pverify.com/Test';

  static Future<Map<String, dynamic>> getPVerifyToken(Dio _dio) async {
    try {
      final jsonData = {
        'Client_Id': '7e0a8352-9f6b-4573-b584-2ef3073718fe',
        'Client_Secret': 'lELZtUyn5VNFYv5anEYC7Ab5syA6A',
        'grant_type': 'client_credentials'
      };

      final response = await _dio.post(
        'https://cors-anywhere.herokuapp.com/$_apiHome/Token',
        options: Options(
          contentType: Headers.formUrlEncodedContentType,
          followRedirects: true,
        ),
        data: jsonData,
      );

      return response.data;
    } on DioError catch (e) {
      throw ServerException(message: e.message);
    }
  }

  static Future<Map<String, dynamic>> getEligiblilityInquiry(
      Dio _dio, String autorizationToken) async {
    final jsonData = {
      "payerCode": "00007",
      "provider": {
        "firstName": "",
        "middleName": "",
        "lastName": " test name",
        "npi": "1122334455",
        "pin": "00000"
      },
      "subscriber": {
        "firstName": "first",
        "middleName": "",
        "lastName": "somelast",
        "dob": "12/21/2018",
        "memberID": "1234567890"
      },
      "dependent": {
        "patient": {
          "firstName": "",
          "middleName": "",
          "lastName": "",
          "dob": "",
          "gender": ""
        },
        "relationWithSubscriber": ""
      },
      "isSubscriberPatient": "true",
      "doS_StartDate": "12/21/2018",
      "doS_EndDate": "12/21/2018",
      "serviceCodes": ["30"],
      "isHMOplan": true,
      "IncludeTextResponse": true,
      "referenceId": "1234",
      "Location": "Nowhere",
      "InternalId": "",
      "CustomerID": ""
    };

    try {
      final response = await _dio.post(
        'https://cors-anywhere.herokuapp.com/$_apiHome/API/EligibilityInquiry',
        data: jsonEncode(jsonData),
        options: Options(
          contentType: Headers.jsonContentType,
          headers: {
            'Authorization': 'Bearer $autorizationToken',
            'Client-API-Id': '7e0a8352-9f6b-4573-b584-2ef3073718fe',
          },
        ),
      );
      return response.data;
    } on DioError catch (e) {
      throw ServerException(message: e.message);
    }
  }

  static Future<Map<String, dynamic>> getEligiblilitySummary(Dio _dio,
      String autorizationToken, EligibilitySummaryRequest request) async {
    try {
      final jsonData = request.toJson();

      final response = await _dio.post(
        'https://cors-anywhere.herokuapp.com/$_apiHome/API/EligibilitySummary',
        data: jsonEncode(jsonData),
        options: Options(
          headers: {
            'Authorization': 'Bearer $autorizationToken',
            'Client-API-Id': '7e0a8352-9f6b-4573-b584-2ef3073718fe',
          },
        ),
      );

      return response.data;
    } on DioError catch (e) {
      throw ServerException(message: e.message);
    }
  }
}

Future<Map<String, dynamic>> getPVerifyToken() async {
  try {
    final jsonData = {
      'Client_Id': '7e0a8352-9f6b-4573-b584-2ef3073718fe',
      'Client_Secret': 'lELZtUyn5VNFYv5anEYC7Ab5syA6A',
      'grant_type': 'client_credentials'
    };

    final response = await sl.get<Dio>().post(
          'https://cors-anywhere.herokuapp.com/https://api.pverify.com/test/Token',
          options: Options(
            contentType: Headers.formUrlEncodedContentType,
            followRedirects: true,
          ),
          data: jsonData,
        );

    return response.data;
  } on DioError catch (e) {
    throw ServerException(message: e.message);
  }
}

Future<void> getEligiblilitySummary(
    String autorizationToken, EligibilitySummaryRequest request) async {
  try {
    final jsonData = request.toJson();
    final response = await sl.get<Dio>().post(
          'https://cors-anywhere.herokuapp.com/https://api.pverify.com/Test/API/EligibilitySummary',
          data: jsonEncode(jsonData),
          options: Options(headers: {
            'Authorization': 'Bearer $autorizationToken',
            'Client-API-Id': '7e0a8352-9f6b-4573-b584-2ef3073718fe',
          }),
        );

    debugPrint(jsonEncode(response.data));
  } on DioError catch (e) {
    // The request was made and the server responded with a status code
    // that falls out of the range of 2xx and is also not 304.
    if (e.response != null) {
      debugPrint("${e.response?.data}");
      debugPrint("${e.response?.headers}");
      debugPrint("${e.response?.requestOptions}");
    } else {
      // Something happened in setting up or sending the request that triggered an Error
      debugPrint("${e.requestOptions}");
      debugPrint(e.message);
    }
  }
}

Future<void> getEligiblilityInquiry(String autorizationToken) async {
  try {
    final jsonData = {
      "payerCode": "00007",
      "provider": {
        "firstName": "",
        "middleName": "",
        "lastName": " test name",
        "npi": "1122334455",
        "pin": "00000"
      },
      "subscriber": {
        "firstName": "first",
        "middleName": "",
        "lastName": "somelast",
        "dob": "12/21/2018",
        "memberID": "1234567890"
      },
      "dependent": {
        "patient": {
          "firstName": "",
          "middleName": "",
          "lastName": "",
          "dob": "",
          "gender": ""
        },
        "relationWithSubscriber": ""
      },
      "isSubscriberPatient": "true",
      "doS_StartDate": "12/21/2018",
      "doS_EndDate": "12/21/2018",
      "serviceCodes": ["30"],
      "isHMOplan": true,
      "IncludeTextResponse": true,
      "referenceId": "1234",
      "Location": "Nowhere",
      "InternalId": "",
      "CustomerID": ""
    };

    final response = await sl.get<Dio>().post(
          'https://cors-anywhere.herokuapp.com/https://api.pverify.com/Test/API/EligibilityInquiry',
          data: jsonEncode(jsonData),
          options: Options(headers: {
            'Authorization': 'Bearer $autorizationToken',
            'Client-API-Id': '7e0a8352-9f6b-4573-b584-2ef3073718fe',
          }),
        );

    debugPrint(jsonEncode(response.data));
  } on DioError catch (e) {
    // The request was made and the server responded with a status code
    // that falls out of the range of 2xx and is also not 304.
    if (e.response != null) {
      debugPrint("${e.response?.data}");
      debugPrint("${e.response?.headers}");
      debugPrint("${e.response?.requestOptions}");
    } else {
      // Something happened in setting up or sending the request that triggered an Error
      debugPrint("${e.requestOptions}");
      debugPrint(e.message);
    }
  }
}
