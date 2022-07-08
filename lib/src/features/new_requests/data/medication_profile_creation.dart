import 'package:dme_pao/dme_pao.dart';

import '../../../core/core.dart';

Future<void> medicationResourceCreation(RMedicationRequest medication) async {
  try {
    await HttpHelper.postRequest(
      'MedicationRequest',
      medication.toJson(),
      basicAuth: true,
    );
  } on ServerException {
    rethrow;
  } on FormatException {
    throw StorageException();
  }
}
