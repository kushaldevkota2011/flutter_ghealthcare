part of 'patient_bloc.dart';

@immutable
abstract class PatientEvent {}

class CreatePatientProfile extends PatientEvent {
  final RPatient patient;
  CreatePatientProfile({required this.patient});
}
