part of 'encounter_bloc.dart';

abstract class EncounterEvent extends Equatable {
  const EncounterEvent();

  @override
  List<Object> get props => [];
}

class CreateEncounterProfile extends EncounterEvent {
  final Encounter encounter;
  const CreateEncounterProfile({required this.encounter});
}

class CreateMedicationProfile extends EncounterEvent {
  final RMedicationRequest medication;
  const CreateMedicationProfile({required this.medication});
}

class CreateDeviceProfile extends EncounterEvent {
  final RDeviceRequest device;
  const CreateDeviceProfile({required this.device});
}
