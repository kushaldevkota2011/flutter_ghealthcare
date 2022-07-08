import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fhir/r5.dart';

part 'organizationaddress_state.dart';

class OrganizationaddressCubit extends Cubit<OrganizationaddressState> {
  OrganizationaddressCubit() : super(OrganizationaddressInitial());

  toggleIsSameAddress(bool isSameAddress) {
    if (isSameAddress) {
      emit(OrganizationAndPractitionerAddressSame());
    } else {
      emit(OrganizationAndPractitionerAddressDifferent());
    }
  }

  addOrganizationAddress(List<Address> address) {
    emit(OrganizationAddressAdditionSuccess(address: address));
  }
}
