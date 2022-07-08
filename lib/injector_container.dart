import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'src/features/new_requests/new_request.dart';

final sl = GetIt.instance;

Future<void> init() async {
  //! application
  //! bloc
  sl.registerFactory(() => PatientBloc(patientResourceRepository: sl()));

  //! data
  sl.registerLazySingleton(
    () => PractitionerSearchCache(
      preferences: sl.get<SharedPreferences>(),
    ),
  );

  sl.registerLazySingleton(
      () => SecureCredentialStorage(sl.get<FlutterSecureStorage>()));

  //! respository
  sl.registerLazySingleton(() => PatientResourceRepository());
  sl.registerLazySingleton(
    () => PractitionerResourceRepository(
      cache: sl.get<PractitionerSearchCache>(),
    ),
  );
  sl.registerLazySingleton(() => OrganizationResourceRepository());
  sl.registerLazySingleton(() => EncounterResourceRepository());
  sl.registerLazySingleton(
    () => PVerifyCoverageRepository(
      sl.get<SecureCredentialStorage>(),
    ),
  );

  sl.registerLazySingleton(() => CoverageResourceRepository());

  //! external
  sl.registerLazySingleton(() => Dio());
  //? shared preferences
  final preferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => preferences);
  sl.registerLazySingleton(() => const FlutterSecureStorage());
}
