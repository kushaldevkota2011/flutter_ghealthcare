part of 'organization_bloc.dart';

abstract class OrganizationState extends Equatable {
  const OrganizationState();

  @override
  List<Object> get props => [];
}

class OrganizationInitial extends OrganizationState {}

class OrganizationResourceCreationStart extends OrganizationState {}

class OrganizationResourceCreationSuccess extends OrganizationState {
  final Organization organization;
  const OrganizationResourceCreationSuccess(this.organization);
}

class OrganizationResouresCreationFailure extends OrganizationState {
  final String? errorMessage;

  const OrganizationResouresCreationFailure({
    this.errorMessage,
  });
}
