part of 'patient_bloc.dart';

@immutable
abstract class PatientState {}

class PatientInitial extends PatientState {}

class PatientProfileCreationStart extends PatientState {}

class PatientProfileCreationSuccess extends PatientState {
  final Patient patient;

  PatientProfileCreationSuccess(this.patient);
}

class PatientProfileCreationFaliure extends PatientState {
  final String message;
  PatientProfileCreationFaliure({required this.message});
}
