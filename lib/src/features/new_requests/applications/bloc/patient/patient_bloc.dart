import 'package:fhir/r5.dart';
import 'package:fhir_us_core_extension/fhir_us_core_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../repository/new_requests_repository.dart';

part 'patient_event.dart';
part 'patient_state.dart';

/// ## CreatePatientProfile
/// **small info:** 😇
///
/// The [CreatePatientProfile] event will take the [RPatinet] and will create the
/// patient resources and returns the [Patient] form the underlying respository
///
/// Don't be confused with that--> this simple twist will help to remove the
/// complex converstion process between the [RPatient] and [Patient].
///
/// The [Patient] class doesn't have the capability to add us-core related fields
/// . The [Rpatient] class provides the capability using the named constructor [patientUsCore]
///  which will add the us core data in the extension field of the Patinet
///
/// If you need to display the us core related fields inside the ui utilized the extension fields.
///
/// ***
///
class PatientBloc extends Bloc<PatientEvent, PatientState> {
  final IPatientResourceRepository patientResourceRepository;
  PatientBloc({required this.patientResourceRepository})
      : super(PatientInitial()) {
    on<CreatePatientProfile>((event, emit) async {
      emit(PatientProfileCreationStart());

      final failureOrPatient =
          await patientResourceRepository.createPatientResource(event.patient);

      failureOrPatient.fold(
        (failure) {
          debugPrint("${failure.message}");
          emit(PatientProfileCreationFaliure(
            message: failure.message ?? 'failure on creating profile',
          ));
        },
        (patient) {
          debugPrint("${patient.toJson()}");
          emit(
            PatientProfileCreationSuccess(patient),
          );
        },
      );
    });
  }
}
