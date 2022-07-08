import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:fhir/r5.dart';
import 'package:fhir_us_core_extension/fhir_us_core_extension.dart';
import 'package:flutter/material.dart';
import 'package:raidon_fhir/injector_container.dart';
import 'package:raidon_fhir/src/core/core.dart';

/// helper function to search for the practitioner profile from npiregistry
///
/// apiEndPoint =  https://npiregistry.cms.hhs.gov/api/?version=2.1
/// search parameters(as an query parameters)
///
/// *version* 2.1/2.0 [default--> 2.1]
///
/// number = NPI number
///
/// enumaration_type = NPI-1/NPI-2 [1--> person, 2-->organization]
///
/// taxonomy_seacription
///
/// first_time
///
/// use_first_name_alias
///
/// last_name
///
/// organization_name
///
/// address_purpose
///
/// city [Exact city, or wildcard * after 2 characters]
///
/// state [2 characters]
///
/// postal_code
///
/// country_code [Exactly 2 characters (if "US", other criteria required)]
///
/// limit [ 	Limit results, default = 10, max = 200]
///
/// skip  [Skip first N results, max = 1000]
/// ***
/// **Response**
///
/// ```
/// {
///   "result_count": 2,
///   "results": [
///       {
///            "addresses": [
///                {
///                    "address_1": "900 CATON AVE",
///                    "address_2": "",
///                    "address_purpose": "LOCATION",
///                    "address_type": "DOM",
///                    "city": "BALTIMORE",
///                    "country_code": "US",
///                    "country_name": "United States",
///                    "fax_number": "410-368-8498",
///                    "postal_code": "212295201",
///                    "state": "MD",
///                    "telephone_number": "410-368-2700"
///                },
///                {
///                    "address_1": "900 CATON AVE",
///                    "address_2": "",
///                    "address_purpose": "MAILING",
///                    "address_type": "DOM",
///                    "city": "BALTIMORE",
///                    "country_code": "US",
///                    "country_name": "United States",
///                    "fax_number": "410-368-8498",
///                    "postal_code": "212295201",
///                    "state": "MD",
///                    "telephone_number": "410-368-2700"
///                }
///            ],
///            "basic": {
///                "credential": "M.D.",
///                "enumeration_date": "2005-05-23",
///                "first_name": "SUSAN",
///                "gender": "F",
///                "last_name": "BEHEN",
///                "last_updated": "2013-10-24",
///                "middle_name": "L",
///                "name": "BEHEN SUSAN",
///                "name_prefix": "DR.",
///                "sole_proprietor": "NO",
///                "status": "A"
///            },
///            "created_epoch": 1116806400,
///            "enumeration_type": "NPI-1",
///            "identifiers": [
///                {
///                    "code": "05",
///                    "desc": "MEDICAID",
///                    "identifier": "162661200",
///                    "issuer": "",
///                    "state": "MD"
///                }
///            ],
///            "last_updated_epoch": 1382572800,
///            "number": 1083617021,
///            "other_names": [],
///            "taxonomies": [
///                {
///                    "code": "208C00000X",
///                    "desc": "Colon & Rectal Surgery",
///                    "license": "D0044563",
///                    "primary": false,
///                    "state": "MD"
///                },
///                {
///                    "code": "208600000X",
///                    "desc": "Surgery",
///                    "license": "D0044563",
///                    "primary": true,
///                    "state": "MD"
///                }
///            ]
///        },
///
///    ],
///
/// }
/// ```
Future<Map<String, dynamic>> searchPractitioner({
  String? version,
  String? number,
  String? enumarationType,
  String? taxonomySeacription,
  String? firstName,
  String? useFirstNameAlias,
  String? lastName,
  String? organizationName,
  String? addressPurpose,
  String? city,
  String? state,
  String? postalCode,
  String? countryCode,
  String? limit,
  String? skip,
}) async {
  final response = await sl.get<Dio>().get(
      'https://cors-anywhere.herokuapp.com/https://npiregistry.cms.hhs.gov/api/',
      options: Options(
        headers: {
          "Access-Control-Allow-Origin": "*",
          'Access-Control-Allow-Headers': 'Access-Control-Allow-Origin, Accept',
        },
      ),
      queryParameters: {
        'version': version ?? '2.1',
        'number': number ?? '',
        'enumaration_type': enumarationType ?? '',
        'taxonomy_seacription': taxonomySeacription ?? '',
        'first_name': firstName ?? '',
        'use_first_name_alias': useFirstNameAlias ?? '',
        'last_name': lastName ?? "",
        'organization_name': organizationName ?? '',
        'address_purpose': addressPurpose ?? '',
        'city': city ?? '',
        'state': state ?? '',
        'postal_code': postalCode ?? "",
        'country_code': countryCode ?? '',
        'limit': limit ?? "",
        'skip': skip ?? '',
      });

  return response.data;
}

/// url: https://rideon.aidbox.app/fhir/Practitioner/

Future<Practitioner> practitionerResourceCreation(
    RPractitioner practitioner) async {
  debugPrint(jsonEncode(practitioner.toJson()));
  try {
    final response = await sl.get<Dio>().post(
          '$rideonAidboxUsCoreHome' '/Practitioner/',
          data: jsonEncode(practitioner.toJson()),
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
      return Practitioner.fromJson((response.data));
    }
  } on DioError catch (e) {
    debugPrint("practitioner error :${e.message}");
    throw ServerException(message: e.message);
  }
}
