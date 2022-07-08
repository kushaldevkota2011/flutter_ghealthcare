import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'credential_storage.dart';

class SecureCredentialStorage extends CredentialStorage {
  final FlutterSecureStorage _secureStorage;
  SecureCredentialStorage(this._secureStorage);

  static const String accessTokenKey = 'access_token';
  static const String expiresInKey = 'expires_in';
  String? _accessToken;
  DateTime? _expiryDate;

  @override
  Future<void> clear() {
    _accessToken = null;
    _expiryDate = null;
    // return _preferences.remove(accessTokenKey);
    return _secureStorage.delete(key: accessTokenKey);
  }

  @override
  Future<String?> read() async {
    if (_accessToken != null &&
        _expiryDate != null &&
        _expiryDate!.isAfter(DateTime.now())) {
      return _accessToken!;
    }

    final accessTokenData = await _secureStorage.read(key: accessTokenKey);
    // _preferences.getString(accessTokenKey);

    if (accessTokenData == null) {
      return null;
    }
    final accessTokenExpiresIn = await _secureStorage.read(key: expiresInKey);
    //_preferences.getString(expiresInKey);
    if (accessTokenExpiresIn == null) {
      return null;
    }

    try {
      _accessToken = accessTokenExpiresIn;
      _expiryDate = DateTime.tryParse(accessTokenExpiresIn);
      if (_expiryDate != null && _expiryDate!.isAfter(DateTime.now())) {
        return null;
      }
      return _accessToken;
    } on FormatException {
      return null;
    }
  }

  @override
  Future<void> save(String accessToken, int expiresIn) async {
    _accessToken = accessToken;
    _expiryDate = DateTime.now().add(Duration(seconds: expiresIn));

    await _secureStorage.write(key: accessTokenKey, value: accessToken);
    return _secureStorage.write(
        key: expiresInKey, value: _expiryDate!.toIso8601String());
  }
}
