part of 'organizationaddress_cubit.dart';

abstract class OrganizationaddressState extends Equatable {
  const OrganizationaddressState();

  @override
  List<Object> get props => [];
}

class OrganizationaddressInitial extends OrganizationaddressState {}

class OrganizationAndPractitionerAddressDifferent
    extends OrganizationaddressState {}

class OrganizationAndPractitionerAddressSame extends OrganizationaddressState {}

class OrganizationAddressAdditionSuccess extends OrganizationaddressState {
  final List<Address> address;
  const OrganizationAddressAdditionSuccess({required this.address});
}
