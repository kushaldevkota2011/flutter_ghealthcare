import 'package:dme_pao/dme_pao.dart';

import '../../../core/core.dart';

Future<void> deviceResourceCreation(RDeviceRequest device) async {
  try {
    await HttpHelper.postRequest(
      'DeviceRequest',
      device.toJson(),
      basicAuth: true,
    );
  } on ServerException {
    rethrow;
  } on FormatException {
    throw StorageException();
  }
}
