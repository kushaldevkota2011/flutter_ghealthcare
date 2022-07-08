part of 'practitioner_bloc.dart';

@immutable
abstract class PractitionerEvent {}

class SearchPractitonerProfile extends PractitionerEvent {
  final String? number;
  final String? firstTime;
  final String? lastName;

  SearchPractitonerProfile({
    this.number,
    this.firstTime,
    this.lastName,
  });
}

class SelectPractitionerProfile extends PractitionerEvent {
  final PractitionerSearchResult practitioner;
  SelectPractitionerProfile({required this.practitioner});
}

class SearchPractitionerOrganizationProfile extends PractitionerEvent {
  final String npi;

  SearchPractitionerOrganizationProfile({
    required this.npi,
  });
}

class SelectPractitionerOrganizationProfile extends PractitionerEvent {
  final PractitionerSearchResult organization;
  SelectPractitionerOrganizationProfile({required this.organization});
}

class CreatePractitionerProfile extends PractitionerEvent {
  final RPractitioner practitioner;

  CreatePractitionerProfile({
    required this.practitioner,
  });
}
