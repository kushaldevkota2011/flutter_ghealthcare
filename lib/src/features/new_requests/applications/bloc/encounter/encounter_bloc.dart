import 'package:bloc/bloc.dart';
import 'package:dme_pao/dme_pao.dart';
import 'package:equatable/equatable.dart';
import 'package:fhir/r5.dart';
import 'package:raidon_fhir/src/features/new_requests/new_request.dart';

part 'encounter_event.dart';
part 'encounter_state.dart';

class EncounterBloc extends Bloc<EncounterEvent, EncounterState> {
  final IEncounterResourceRepository encounterResourceRepository;

  EncounterBloc({required this.encounterResourceRepository})
      : super(EncounterInitial()) {
    //
    on<CreateEncounterProfile>((event, emit) async {
      emit(EncounterProfileCreationStart());

      final failureOrEncounter = await encounterResourceRepository
          .createEncounterProfile(encounter: event.encounter);

      failureOrEncounter.fold(
        (failure) => emit(
          EncounterProfileCreationFaliure(
            message: failure.message ?? 'Failure on Creating Encounter Profile',
          ),
        ),
        (encounter) => emit(
          EncounterProfileCreationSuccess(encounter),
        ),
      );
    });

    //! CreateMedicationProfile
    on<CreateMedicationProfile>((event, emit) async {
      emit(CreateMedicationProfileStart());
      final failurOrUnit = await encounterResourceRepository
          .createMedicationProfile(event.medication);

      failurOrUnit.fold((l) => emit(CreateMedicationProfileFailure()),
          (r) => emit(CreateMedicationProfileSuccess()));
    });

    //! CreateDeviceProfile
    on<CreateDeviceProfile>((event, emit) async {
      emit(CreateDeviceProfileStart());
      final failurOrUnit =
          await encounterResourceRepository.createDeviceProfile(event.device);

      failurOrUnit.fold((l) => emit(CreateDeviceProfileFailure()),
          (r) => emit(CreateDeviceProfileSuccess()));
    });
  }
}
