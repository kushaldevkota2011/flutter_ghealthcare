import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:fhir/r5.dart';
import 'package:fhir_us_core_extension/fhir_us_core_extension.dart';
import 'package:flutter/material.dart';
import 'package:raidon_fhir/src/core/core.dart';

import '../../../../injector_container.dart';

/// url: https://rideon.aidbox.app/fhir/Organization/

Future<Organization> organizationResourceCreation(
    ROrganization organization) async {
  debugPrint(jsonEncode(organization.toJson()));
  try {
    final response = await sl.get<Dio>().post(
          '$rideonAidboxUsCoreHome' '/Organization/',
          data: jsonEncode(organization.toJson()),
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
      return Organization.fromJson((response.data));
    }
  } on DioError catch (e) {
    debugPrint("practitioner error :${e.message}");
    throw ServerException(message: e.message);
  }
}
