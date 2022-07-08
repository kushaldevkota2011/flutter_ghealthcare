// ignore_for_file: unused_field

import 'dart:convert';

import 'package:fhir/r5.dart';
import 'package:fhir_us_core_extension/fhir_us_core_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/core.dart';
import '../../new_request.dart';

class PractitionerPage extends StatefulWidget {
  const PractitionerPage({Key? key}) : super(key: key);

  @override
  State<PractitionerPage> createState() => _PractitionerPageState();
}

class _PractitionerPageState extends State<PractitionerPage> {
  HumanName searchResultToName(PractitionerSearchResultBasic? basic) {
    return HumanName(
      family: basic?.lastName,
      given: [basic?.firstName ?? '', basic?.middleName ?? ''],
      prefix: [basic?.namePrefix ?? ''],
    );
  }

  HumanName? _name;
  List<Address>? _address;
  List<ContactPoint>? _telecomes;
  ROrganization? _organization;
  bool _validateData = false;
  bool _isChildInvalid = false;
  bool _isValidForm = false;
  bool isBothAddressAreSame = false;
  final _formKey = GlobalKey<FormState>();

  late List<bool> invalidFields;

  //! name
  void nameSectionSetter(HumanName name, [int? npi]) {
    _name = name;
  }

  //! address
  void addressSectionSetter(List<Address> address) {
    _address = address;
  }

  //! tele communication
  void teleCommunicationSetter(List<ContactPoint> contactPoint) {
    _telecomes = contactPoint;
  }

  //! organization setter
  void organizationSetter(ROrganization organization) {
    _organization = organization;
    debugPrint(jsonEncode(_organization!.toJson()));
  }

  makePractitionerProfile() {
    final practitioner = RPractitioner.usCore(
      active: Boolean(true),
      address: _address,
      name: _name != null ? [_name!] : [],
      telecom: _telecomes,
      identifier: [],
      npiNumber: context.read<PractitionerBloc>().state.practitioner?.number,
    );

    debugPrint(jsonEncode(practitioner.toJson()));

    context
        .read<PractitionerBloc>()
        .add(CreatePractitionerProfile(practitioner: practitioner));

    context
        .read<OrganizationBloc>()
        .add(CreateOrganizationResource(organization: _organization!));
  }

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

  _showToast(String message, {Color? backgroundColor}) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      showToast(context, message, backgroundColor: backgroundColor);
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PractitionerBloc, PractitionerState>(
      listener: (context, state) {
        if (state.status ==
            PractitionerStateStatus.PractitionerProfileCreationStart) {
          _showToast(
            'Practitioner profile creation is under Progress',
            backgroundColor: const Color(0xffea9315),
          );
        } else if (state.status ==
            PractitionerStateStatus.PractitionerProfileCreationSuccess) {
          _showToast('Practitioner profile creation is successfull',
              backgroundColor: Colors.green);
        } else if (state.status ==
            PractitionerStateStatus.PractitionerProfileCreationFailure) {
          _showToast(
            'Practitioner profile creation failed : ${state.errorMessage ?? ''}',
            backgroundColor: Colors.red,
          );
        }
      },
      builder: (context, state) {
        return BlocBuilder<PractitionerBloc, PractitionerState>(
          builder: (context, state) {
            return Stack(
              children: [
                Form(
                  key: _formKey,
                  child: SingleChildScrollView(
                    controller: ScrollController(),
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        const PractitionerSearch(),

                        //! general -> 0
                        const SizedBox(height: 20),
                        state.status ==
                                PractitionerStateStatus
                                    .SelectPractitionerProfileSuccess
                            ? NewRequestNameSection(
                                name: searchResultToName(
                                    state.practitioner?.basic),
                                addValidator: true,
                                nameSetter: nameSectionSetter,
                                returnData: _isValidForm,
                              )
                            : NewRequestNameSection(
                                addValidator: true,
                                nameSetter: nameSectionSetter,
                                returnData: _isValidForm,
                              ),

                        //! address -> 1
                        const SizedBox(height: 20),
                        BlocBuilder<OrganizationaddressCubit,
                            OrganizationaddressState>(
                          builder: (context, orgState) {
                            return NewRequestAddressSection(
                              addressList: state.status ==
                                      PractitionerStateStatus
                                          .SelectPractitionerProfileSuccess
                                  ? basicToAddresses(
                                      state.practitioner?.addresses)
                                  : null,
                              addressSetter: (value) {
                                if (value.isNotEmpty) {
                                  if (orgState
                                      is OrganizationAndPractitionerAddressSame) {
                                    context
                                        .read<OrganizationaddressCubit>()
                                        .addOrganizationAddress(value);
                                  }

                                  addressSectionSetter(value);
                                }
                              },
                              invalidFormSetter: (value) {
                                invalidFormSetter(value, 1);
                              },
                              validateData: _validateData,
                              isReturnValue: _isValidForm ||
                                  orgState
                                      is OrganizationAndPractitionerAddressSame,
                            );
                          },
                        ),

                        //! tele com --> 2
                        const SizedBox(height: 20),
                        CommunicationSection(
                          communicationSetter: teleCommunicationSetter,
                          invalidFormSetter: (value) {
                            invalidFormSetter(value, 2);
                          },
                          returnValue: _isValidForm,
                        ),

                        //! organization --> 3
                        const SizedBox(height: 20),
                        PractitionerOrganizationSection(
                          organizationSetter: organizationSetter,
                          validateData: _validateData,
                          inValidFormSetter: (value) {
                            invalidFormSetter(value, 3);
                          },
                          isReturnData: _isValidForm,
                        ),

                        //! submit button
                        const SizedBox(height: 20),
                        SubmitButton(
                          onPressed: () async {
                            setState(() {
                              _validateData = true;
                            });
                            if (_formKey.currentState?.validate() == true) {
                              setState(() {
                                _isValidForm = true;
                              });
                              if (!_isChildInvalid) {
                                await showToast(
                                  context,
                                  'Practitioner form is filled out!',
                                  backgroundColor: Colors.green,
                                );
                                makePractitionerProfile();
                              } else {
                                showToast(
                                  context,
                                  'Fill out the all required forms fields',
                                  backgroundColor: Colors.red,
                                );
                              }
                            } else {
                              showToast(
                                context,
                                'Fill out the all required forms fields',
                                backgroundColor: Colors.red,
                              );
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                if (state.status ==
                        PractitionerStateStatus.PractitionerSearching ||
                    state.status ==
                        PractitionerStateStatus
                            .PractitionerOrganizationSearching)
                  const OverlayWidget(),
              ],
            );
          },
        );
      },
    );
  }

  @override
  void initState() {
    super.initState();
    invalidFields = List.generate(4, (index) => false);
  }

  void invalidFormSetter(value, int index) {
    invalidFields[index] = value;
    _isChildInvalid = invalidFields.contains(true);
  }
}
