import 'package:fhir/r5.dart';

import '../../../core/core.dart';

Future<Coverage> coverageProfileCreation(Coverage coverage) async {
  try {
    final responseData = await HttpHelper.postRequest(
        'Coverage', coverage.toJson(),
        basicAuth: true);

    return Coverage.fromJson(responseData);
  } on ServerException {
    rethrow;
  } on FormatException {
    throw StorageException();
  }
}
