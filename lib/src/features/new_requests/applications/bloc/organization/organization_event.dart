part of 'organization_bloc.dart';

abstract class OrganizationEvent extends Equatable {
  const OrganizationEvent();

  @override
  List<Object> get props => [];
}

class CreateOrganizationResource extends OrganizationEvent {
  final ROrganization organization;

  const CreateOrganizationResource({
    required this.organization,
  });
}
