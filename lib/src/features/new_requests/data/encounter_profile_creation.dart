import 'package:fhir/r5.dart';

import '../../../core/core.dart';

/// throws only [ServerException] adn [StorageException]
Future<Encounter> encounterProfileCreation(Encounter encounter) async {
  try {
    final responseData = await HttpHelper.postRequest(
        'Encounter', encounter.toJson(),
        basicAuth: true);

    return Encounter.fromJson(responseData);
  } on ServerException {
    rethrow;
  } on FormatException {
    throw StorageException();
  }
}
