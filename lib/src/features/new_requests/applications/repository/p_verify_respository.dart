import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/services.dart';

import '../../../../../injector_container.dart';
import '../../../../core/core.dart';
import '../../data/data.dart';
import '../applications.dart';

abstract class CoverageRepository {
  Future<Either<Failure, EligibilitySummaryResponse>> searchCoverage(
      EligibilitySummaryRequest request);
}

class PVerifyCoverageRepository extends CoverageRepository {
  final Dio _dio;
  final CredentialStorage _credentialStorage;

  PVerifyCoverageRepository(this._credentialStorage, {Dio? dio})
      : _dio = dio ?? sl.get<Dio>();

  @override
  Future<Either<Failure, EligibilitySummaryResponse>> searchCoverage(
      EligibilitySummaryRequest request) async {
    try {
      final accessToken = await _credentialStorage.read();
      if (accessToken != null) {
        // search
        final data =
            await PVerifyAPI.getEligiblilitySummary(_dio, accessToken, request);
        return right(EligibilitySummaryResponse.fromJson(data));
      } else {
        final responseData = await _refereshToken();

        final accessToken = responseData['access_token'];
        final expiresIn = responseData['expires_in'];
        if (accessToken != null && expiresIn != null) {
          await _credentialStorage.save(accessToken, expiresIn);

          final data = await PVerifyAPI.getEligiblilitySummary(
              _dio, accessToken, request);

          return right(EligibilitySummaryResponse.fromJson(data));
        } else {
          throw ServerException(message: 'Unexcepted null data');
        }
      }
    } on ServerException catch (e) {
      return left(ServerFailure(message: e.message ?? ''));
    } on StorageException {
      return left(StorageFailure());
    } on PlatformException {
      return left(StorageFailure());
    } on FormatException {
      return left(ServerFailure(message: 'Error is Parsing Json'));
    }
  }

  Future<Map<String, dynamic>> _refereshToken() {
    return PVerifyAPI.getPVerifyToken(_dio);
  }
}
