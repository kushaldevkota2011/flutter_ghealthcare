part of 'encounter_bloc.dart';

abstract class EncounterState extends Equatable {
  const EncounterState();

  @override
  List<Object> get props => [];
}

class EncounterInitial extends EncounterState {}

class EncounterProfileCreationStart extends EncounterState {}

class EncounterProfileCreationSuccess extends EncounterState {
  final Encounter encounter;
  const EncounterProfileCreationSuccess(this.encounter);
}

class EncounterProfileCreationFaliure extends EncounterState {
  final String message;
  const EncounterProfileCreationFaliure({required this.message});
}

class CreateMedicationProfileStart extends EncounterState {}

class CreateMedicationProfileSuccess extends EncounterState {}

class CreateMedicationProfileFailure extends EncounterState {}

class CreateDeviceProfileStart extends EncounterState {}

class CreateDeviceProfileSuccess extends EncounterState {}

class CreateDeviceProfileFailure extends EncounterState {}
