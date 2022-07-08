import 'package:fhir/r5.dart';
import 'package:fhir_us_core_extension/fhir_us_core_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/ui/column_form_field.dart';
import '../../new_request.dart';

class PractitionerOrganizationSection extends StatefulWidget {
  const PractitionerOrganizationSection({
    Key? key,
    this.validateData = false,
    this.isReturnData = false,
    this.organizationSetter,
    this.inValidFormSetter,
  }) : super(key: key);
  final bool validateData;
  final bool isReturnData;
  final ValueSetter<ROrganization>? organizationSetter;
  final ValueSetter<bool>? inValidFormSetter;

  @override
  State<PractitionerOrganizationSection> createState() =>
      _PractitionerOrganizationSectionState();
}

class _PractitionerOrganizationSectionState
    extends State<PractitionerOrganizationSection> {
  final _nameEditingController = TextEditingController();

  List<ContactPoint>? _telecomes;
  List<Address>? _address;
  bool isActive = false;

  List<Address>? basicToAddresses(
      List<PractitionerSearchResultAddress>? addressList) {
    if (addressList != null && addressList.isNotEmpty) {
      final List<Address> addresses = [];
      for (var address in addressList) {
        addresses.add(Address(
          city: address.city,
          country: address.countryCode,
          line: [address.address1 ?? '', address.address2 ?? ''],
          postalCode: address.postalCode,
          state: address.state,
        ));
      }
      return addresses;
    }
    return null;
  }

  //! tele communication
  void teleCommunicationSetter(List<ContactPoint> contactPoint) {
    _telecomes = contactPoint;
  }

  //! address
  void _addressSetter(List<Address> address) {
    _address = address;
  }

  makePractitionerOrganization() {
    // why this?
    // when user check that both
    if (_address == null) {
      final orgState = context.read<OrganizationaddressCubit>().state;
      final state = context.read<PractitionerBloc>().state;
      _address = checkStateAndGiveAddress(orgState, state);
    }

    return ROrganization.usCore(
      active:
          context.read<PractitionerBloc>().state.organization?.basic?.status ==
                  'A'
              ? Boolean(isActive)
              : null,
      address: _address,
      name: _nameEditingController.text,
      telecom: _telecomes,
      identifier: [],
      npiNumber: context.read<PractitionerBloc>().state.organization?.number,
    );
  }

  @override
  Widget build(BuildContext context) {
    if (widget.isReturnData && widget.organizationSetter != null) {
      widget.organizationSetter!(makePractitionerOrganization());
    }
    return LayoutBuilder(builder: (context, constraints) {
      return BlocBuilder<PractitionerBloc, PractitionerState>(
        builder: (context, state) {
          if (state.status ==
              PractitionerStateStatus
                  .SelectPractitionerOrganizationProfileSuccess) {
            if (state.organization != null) {
              _nameEditingController.text =
                  state.organization!.basic?.organizationName ?? '';

              isActive = state.organization?.basic?.status == 'A';
            }
          }
          return FormSectionLayout(
            childern: [
              const PractitionerOrganizationSearch(),

              //! org name --> 0
              ColumnFormField(
                lable: 'Name*',
                controller: _nameEditingController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Enter the organization name";
                  }
                  return null;
                },
                maxWidth: constraints.maxWidth * 0.2,
              ),

              //! address -->0
              BlocBuilder<OrganizationaddressCubit, OrganizationaddressState>(
                builder: (context, orgState) {
                  return NewRequestAddressSection(
                    isBillingAddress: true,
                    color: Colors.grey,
                    addressSetter: _addressSetter,
                    isSameAddress:
                        orgState is OrganizationAndPractitionerAddressSame ||
                            orgState is OrganizationAddressAdditionSuccess,
                    addressList: checkStateAndGiveAddress(orgState, state),
                    checkBoxName: 'Same as Practitioner address',
                    validateData: widget.validateData,
                    isReturnValue: widget.isReturnData,
                    invalidFormSetter: widget.inValidFormSetter,
                    toggleSameAsCheckBox: (value) {
                      context
                          .read<OrganizationaddressCubit>()
                          .toggleIsSameAddress(value ?? false);
                    },
                  );
                },
              ),

              //! tele com -->1
              CommunicationSection(
                color: Colors.grey,
                addFax: true,
                communicationSetter: teleCommunicationSetter,
                returnValue: widget.isReturnData,
                invalidFormSetter: widget.inValidFormSetter,
              ),
            ],
            sectionName: 'Organization',
          );
        },
      );
    });
  }

  @override
  void dispose() {
    _nameEditingController.dispose();
    super.dispose();
  }

  List<Address>? checkStateAndGiveAddress(
    OrganizationaddressState orgState,
    PractitionerState state,
  ) {
    return (orgState is OrganizationAddressAdditionSuccess)
        ? orgState.address
        : state.status ==
                PractitionerStateStatus
                    .SelectPractitionerOrganizationProfileSuccess
            ? basicToAddresses(state.organization?.addresses)
            : null;
  }
}
