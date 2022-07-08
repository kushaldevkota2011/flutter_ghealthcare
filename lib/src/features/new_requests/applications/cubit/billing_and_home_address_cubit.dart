import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fhir/r5.dart';

part 'billing_and_home_address_state.dart';

class BillingandhomeaddressCubit extends Cubit<BillingandhomeaddressState> {
  BillingandhomeaddressCubit() : super(BillingandhomeaddressInitial());

  toggleIsSameAddress(bool isSameAddress) {
    if (isSameAddress) {
      emit(BillingAndHomeAddressSame());
    } else {
      emit(BillingAndHomeAddressDifferent());
    }
  }

  addBillingAddress(List<Address> address) {
    emit(BillingAddressAdditionSuccess(address: address));
  }
}
