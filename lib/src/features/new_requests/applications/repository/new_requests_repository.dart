import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:dme_pao/dme_pao.dart';
import 'package:fhir/r5.dart';
import 'package:fhir_us_core_extension/fhir_us_core_extension.dart';
import 'package:flutter/foundation.dart';

import '../../../../core/core.dart';
import '../../data/encounter_profile_creation.dart';
import '../../new_request.dart';

//**********************************************************
//!             Patient Resource Repository
//**********************************************************

/// This repository will take the [RPatient] and returns [Patient]
///
/// this simple process will lift up your long time to convert back and forth
abstract class IPatientResourceRepository {
  Future<Either<Failure, Patient>> createPatientResource(RPatient resource);
}

class PatientResourceRepository extends IPatientResourceRepository {
  @override
  Future<Either<Failure, Patient>> createPatientResource(
      RPatient resource) async {
    try {
      final response = await patientResourceCreation(resource);
      return right(response);
    } catch (e) {
      return left(ServerFailure(message: e.toString()));
    }
  }
}

//**********************************************************
//!             Practitioner Resource Repository
//**********************************************************

abstract class IPractitionerResourceRepository {
  Future<Either<Failure, List<PractitionerSearchResult>>>
      searchPractitionerResource(
          {String? firstName, String? lastName, String? npi});
  Future<Either<Failure, Practitioner>> createPractitionerProfile(
      {required RPractitioner practitioner});
}

class PractitionerResourceRepository extends IPractitionerResourceRepository {
  final PractitionerSearchCache cache;

  PractitionerResourceRepository({
    required this.cache,
  });

  @override
  Future<Either<Failure, Practitioner>> createPractitionerProfile(
      {required RPractitioner practitioner}) async {
    try {
      final response = await practitionerResourceCreation(practitioner);
      return right(response);
    } catch (e) {
      return left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<PractitionerSearchResult>>>
      searchPractitionerResource(
          {String? firstName, String? lastName, String? npi}) async {
    try {
      if (cache.contains(firstName ?? lastName ?? npi ?? '')) {
        final data = cache.get(firstName ?? lastName ?? npi ?? '');
        if (data != null) {
          return right(data);
        }
      }

      final jsonData = await searchPractitioner(
        lastName: lastName,
        number: npi,
        firstName: firstName,
      );

      if (jsonData['result_count'] > 0) {
        final data = await compute(decodePractitionerSearchResult,
            jsonData['results'] as List<dynamic>);

        cache.set(firstName ?? lastName ?? npi ?? '', data);
        return right(data);
      }
      return right([]);
    } on DioError catch (e) {
      // no internet connection
      if (e.noInternetConnection) {
        debugPrint("No internet connection in here");
        return left(ServerFailure(message: 'No internet connection'));
      } else {
        rethrow;
      }
    } on TypeError {
      return left(StorageFailure());
    }
  }
}

List<PractitionerSearchResult> decodePractitionerSearchResult(
    List<dynamic> data) {
  final List<PractitionerSearchResult> resluts = [];

  for (var json in data) {
    resluts.add(PractitionerSearchResult.fromJson(json));
  }

  return resluts;
}

//**********************************************************
//!             Organization Resource Repository
//**********************************************************

abstract class IOrganizationResourceRepository {
  Future<Either<Failure, Organization>> createOrganizationProfile(
      {required ROrganization organization});
}

class OrganizationResourceRepository extends IOrganizationResourceRepository {
  @override
  Future<Either<Failure, Organization>> createOrganizationProfile(
      {required ROrganization organization}) async {
    try {
      final response = await organizationResourceCreation(organization);
      debugPrint(jsonEncode(response.toJson()));
      return right(response);
    } catch (e) {
      return left(ServerFailure(message: e.toString()));
    }
  }
}

//**********************************************************
//!             Encounter Resource Repository
//**********************************************************

abstract class IEncounterResourceRepository {
  Future<Either<Failure, Encounter>> createEncounterProfile(
      {required Encounter encounter});

  Future<Either<Failure, List<Coding>>> searchMedication(String input);

  Future<Either<Failure, List<Coding>>> searchDevice(String input);

  Future<Either<Failure, List<Coding>>> searchCondition(String input);

  Future<Either<Failure, Unit>> createMedicationProfile(
      RMedicationRequest medication);

  Future<Either<Failure, Unit>> createDeviceProfile(RDeviceRequest device);
}

class EncounterResourceRepository extends IEncounterResourceRepository {
  @override
  Future<Either<Failure, Encounter>> createEncounterProfile(
      {required Encounter encounter}) async {
    try {
      final response = await encounterProfileCreation(encounter);
      return right(response);
    } on ServerException catch (e) {
      return left(ServerFailure(message: e.message ?? ''));
    } on StorageException {
      return left(StorageFailure());
    }
  }

  @override
  Future<Either<Failure, List<Coding>>> searchMedication(String input) async {
    try {
      final responseData = await medicationSearch(input);
      if (responseData != null) {
        return right(await compute(
            _convertToRCoding, responseData['entry'] as List<dynamic>));
      } else {
        throw NullThrownError();
      }
    } on NullThrownError {
      return left(StorageFailure());
    } on FormatException {
      return left(StorageFailure());
    }
  }

  @override
  Future<Either<Failure, List<Coding>>> searchDevice(String input) async {
    try {
      final responseData = await medicationSearch(input, isDevice: true);
      if (responseData != null) {
        return right(await compute(
            _convertToRCoding, responseData['entry'] as List<dynamic>));
      } else {
        throw NullThrownError();
      }
    } on NullThrownError {
      return left(StorageFailure());
    } on FormatException {
      return left(StorageFailure());
    }
  }

  @override
  Future<Either<Failure, List<Coding>>> searchCondition(String input) async {
    try {
      final responseData = await medicationSearch(input, isCondition: true);
      if (responseData != null) {
        return right(await compute(
            _convertToRCoding, responseData['entry'] as List<dynamic>));
      } else {
        throw NullThrownError();
      }
    } on NullThrownError {
      return left(StorageFailure());
    } on FormatException {
      return left(StorageFailure());
    }
  }

  @override
  Future<Either<Failure, Unit>> createMedicationProfile(
      RMedicationRequest medication) async {
    try {
      await medicationResourceCreation(medication);
      return right(unit);
    } on ServerException catch (e) {
      return left(ServerFailure(message: e.message ?? ''));
    } on StorageException {
      return left(StorageFailure());
    }
  }

  @override
  Future<Either<Failure, Unit>> createDeviceProfile(
      RDeviceRequest device) async {
    try {
      await deviceResourceCreation(device);
      return right(unit);
    } on ServerException catch (e) {
      return left(ServerFailure(message: e.message ?? ''));
    } on StorageException {
      return left(StorageFailure());
    }
  }
}

List<Coding> _convertToRCoding(List<dynamic> jsonData) {
  List<Coding> concept = [];
  for (var resource in jsonData) {
    concept.add(Coding.fromJson(resource['resource']));
  }
  return concept;
}

//**********************************************************
//!             Coverage Resource Repository
//**********************************************************

abstract class ICoverageResourceRepository {
  Future<Either<Failure, Coverage>> makeProfile(Coverage coverage);
}

class CoverageResourceRepository extends ICoverageResourceRepository {
  @override
  Future<Either<Failure, Coverage>> makeProfile(Coverage coverage) async {
    try {
      final response = await coverageProfileCreation(coverage);
      return right(response);
    } on ServerException catch (e) {
      return left(ServerFailure(message: e.message ?? ''));
    } on StorageException {
      return left(StorageFailure());
    }
  }
}
