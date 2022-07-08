part of 'billing_and_home_address_cubit.dart';

abstract class BillingandhomeaddressState extends Equatable {
  const BillingandhomeaddressState();

  @override
  List<Object> get props => [];
}

class BillingandhomeaddressInitial extends BillingandhomeaddressState {}

class BillingAndHomeAddressDifferent extends BillingandhomeaddressState {}

class BillingAndHomeAddressSame extends BillingandhomeaddressState {}

class BillingAddressAdditionSuccess extends BillingandhomeaddressState {
  final List<Address> address;
  const BillingAddressAdditionSuccess({required this.address});
}
