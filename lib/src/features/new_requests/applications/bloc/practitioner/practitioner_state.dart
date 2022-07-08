// ignore_for_file: constant_identifier_names

part of 'practitioner_bloc.dart';

enum PractitionerStateStatus {
  PractitionerInitial,
  PractitionerSearching,
  PractitionerSearchSuceess,
  PractitionerSearchFailed,
  SelectPractitionerProfileSuccess,

  PractitionerOrganizationSearching,
  PractitionerOrganizationSearchSuceess,
  PractitionerOrganizationSearchFailed,
  SelectPractitionerOrganizationProfileSuccess,

  PractitionerProfileCreationStart,
  PractitionerProfileCreationSuccess,
  PractitionerProfileCreationFailure,
}

@immutable
class PractitionerState extends Equatable {
  final PractitionerStateStatus status;
  final List<PractitionerSearchResult>? practitionerList;
  final String? errorMessage;
  final PractitionerSearchResult? practitioner;
  final List<PractitionerSearchResult>? organizationList;
  final PractitionerSearchResult? organization;
  final Practitioner? practitionerPostData;

  const PractitionerState(
      {required this.status,
      this.practitionerList,
      this.errorMessage,
      this.practitioner,
      this.organizationList,
      this.organization,
      this.practitionerPostData});

  @override
  List<Object?> get props => [
        status,
        practitionerList,
        errorMessage,
        practitioner,
        organizationList,
        organization,
        practitionerPostData,
      ];
}
