import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:raidon_fhir/injector_container.dart';
import 'package:raidon_fhir/src/core/core.dart';

class HttpHelper {
  /// It will throw [ServerException] when status code is 400 and
  /// on [DioError]
  static Future<dynamic> postRequest(String path, Map<String, dynamic> data,
      {bool basicAuth = false}) async {
    try {
      final response = await sl.get<Dio>().post(
            rideonAidboxUsCoreHome + '/$path',
            data: jsonEncode(data),
            options: basicAuth
                ? Options(
                    headers: {
                      HttpHeaders.authorizationHeader: 'Basic ' +
                          base64Encode(
                            utf8.encode('$userName:$password'),
                          ),
                    },
                  )
                : null,
          );

      if (response.statusCode == 400) {
        throw ServerException();
      } else {
        return response.data;
      }
    } on DioError catch (e) {
      throw ServerException(message: e.message);
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
