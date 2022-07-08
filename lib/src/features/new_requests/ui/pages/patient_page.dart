import 'dart:convert';

import 'package:fhir/r5.dart';
import 'package:fhir_us_core_extension/fhir_us_core_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../../../core/core.dart';
import '../../new_request.dart';

class PatientPage extends StatefulWidget {
  const PatientPage({Key? key}) : super(key: key);

  @override
  State<PatientPage> createState() => _PatientPageState();
}

class _PatientPageState extends State<PatientPage> {
  final _formkey = GlobalKey<FormState>();
  final homeAddressKey = UniqueKey();
  final billingAddressKey = UniqueKey();
  HumanName? _name;
  Address? _billingAddress;
  Address? _homeAddress;
  DateTime? _dob;
  List<ContactPoint>? _telecomes;
  String? _communicationLanguage;
  List<PatientCommunication>? _communication;
  bool? _isMultipleBirth;
  int? _birthOrder;
  bool isHomeAndBillingAddressSame = false;

  // gender
  PatientGender? _gender;
  PatientUsCoreBirthSex? _birthSex;
  PatientSexualOrientation? _sexualOrientation;
  PatientUsCoreGenderIdentity? _genderIdentity;
  PatientUsCoreRace? _race;
  PatientUsCoreEthnicity? _ethnicity;

  PatientMaritalStatus? _maritalStatus;
  // List<PatientContact>? _contact;

  bool _isValidForm = false;
  bool _validateData = false;
  bool _isChildIsInvalid = false;

  late List<bool> invalidFields;

  //! name
  void nameSectionSetter(HumanName name) {
    _name = name;
  }

  //! address

  void _billingAddressSetter(List<Address> address) {
    if (address.isNotEmpty) {
      _billingAddress = address.first;
    }
  }

  void _homeAddressSetter(List<Address> address) {
    if (address.isNotEmpty) {
      _homeAddress = address.first;
    }
  }

  //! dob
  void dobSetter(DateTime? dateTime,
      [bool? isMultipleBitrh, int? orderOfBirth]) {
    _dob = dateTime;
    _isMultipleBirth = isMultipleBitrh;
    _birthOrder = orderOfBirth;
  }

  //! gender
  void genderSetter(
    PatientGender gender, [
    PatientUsCoreBirthSex? birthSex,
    PatientSexualOrientation? sexualOrientation,
    PatientUsCoreGenderIdentity? genderIdentity,
    PatientUsCoreRace? race,
    PatientUsCoreEthnicity? ethnicity,
  ]) {
    _gender = gender;
    _birthSex = birthSex;
    _sexualOrientation = sexualOrientation;
    _genderIdentity = genderIdentity;
    _race = race;
    _ethnicity = ethnicity;
  }

  //! maritial
  void maritialSetter(PatientMaritalStatus? status) {
    _maritalStatus = status;
  }

  //! contact
  // void contactSetter(List<PatientContact>? contact) {
  //   _contact = contact;
  // }

  //! communication language
  void communicationLanguageSetter(String language) {
    _communicationLanguage = language;
    _communication = [
      PatientCommunication(language: CodeableConcept(text: language))
    ];
  }

  //! tele communication
  void teleCommunicationSetter(List<ContactPoint> contactPoint) {
    _telecomes = contactPoint;
  }

  void invalidFormSetter(value, int index) {
    invalidFields[index] = value;
    _isChildIsInvalid = invalidFields.contains(true);
  }

  List<Address>? makeAddress() {
    List<Address>? _address;
    if (_billingAddress != null) {
      if (_address != null) {
        _address.add(_billingAddress!);
      } else {
        _address = [_billingAddress!];
      }
    }
    if (_homeAddress != null) {
      if (_address != null) {
        _address.add(_homeAddress!);
      } else {
        _address = [_homeAddress!];
      }
    }

    return _address;
  }

  makePatientProfile() {
    final patient = RPatient.patientUsCore(
      identifier: [],
      name: _name != null ? [_name!] : [],
      gender: _gender!,
      address: makeAddress(),
      birthDate:
          _dob != null ? Date(DateFormat('y-MM-dd').format(_dob!)) : null,
      multipleBirthBoolean:
          _isMultipleBirth != null ? Boolean(_isMultipleBirth!) : null,
      multipleBirthInteger:
          _isMultipleBirth == true ? Integer(_birthOrder!) : null,
      resourceType: R5ResourceType.Patient,
      telecom: _telecomes,
      communication: _communication,
      active: Boolean(true),
      language:
          _communicationLanguage != null ? Code(_communicationLanguage) : null,
      usCoreBirthSex: _birthSex,
      usCoreEthnicity: _ethnicity,
      usCoreRace: _race,
      sexualOrientation: _sexualOrientation,
      usCoreGenderIdentity: _genderIdentity,
      maritalStatus: _maritalStatus != null
          ? codeableConceptFromMaritialStatus[_maritalStatus]
          : null,
    );

    debugPrint(jsonEncode(patient.toJson()));

    context.read<PatientBloc>().add(CreatePatientProfile(patient: patient));
  }

  @override
  void initState() {
    super.initState();
    invalidFields = List.generate(8, (index) => false);
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PatientBloc, PatientState>(
      listener: (context, state) {
        if (state is PatientProfileCreationStart) {
          WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
            showToast(
              context,
              'Patient Profile creation is under Progress',
              backgroundColor: const Color(0xffea9315),
            );
          });
        } else if (state is PatientProfileCreationFaliure) {
          WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
            showToast(
              context,
              'Patient Profile creation faliure : ${state.message}',
              backgroundColor: Colors.red,
            );
          });
        } else if (state is PatientProfileCreationSuccess) {
          WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
            showToast(
              context,
              'Patient Profile creation is successfull 😇',
              backgroundColor: Colors.green,
            );
          });
        }
      },
      builder: (context, state) {
        return SingleChildScrollView(
          controller: ScrollController(),
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Form(
                key: _formkey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //! name section
                    NewRequestNameSection(
                      addValidator: true,
                      nameSetter: nameSectionSetter,
                      returnData: _isValidForm,
                    ),
                    //! address
                    const SizedBox(height: 25),
                    BlocBuilder<BillingandhomeaddressCubit,
                        BillingandhomeaddressState>(
                      builder: (context, addressState) {
                        return NewRequestAddressSection(
                          addressSetter: (value) {
                            if (isHomeAndBillingAddressSame) {
                              context
                                  .read<BillingandhomeaddressCubit>()
                                  .addBillingAddress(value);
                            }
                            _homeAddressSetter(value);
                          },
                          addressList:
                              addressState is BillingAddressAdditionSuccess
                                  ? _homeAddress != null
                                      ? [_homeAddress!]
                                      : null
                                  : null,
                          isReturnValue: _isValidForm ||
                              addressState is BillingAndHomeAddressSame,
                          validateData: _validateData,
                          name: 'Home Address',
                          // key: homeAddressKey,
                          invalidFormSetter: (value) =>
                              invalidFormSetter(value, 1),
                        );
                      },
                    ),
                    const SizedBox(height: 25),

                    BlocBuilder<BillingandhomeaddressCubit,
                        BillingandhomeaddressState>(
                      builder: (context, addressState) {
                        return NewRequestAddressSection(
                          key: billingAddressKey,
                          name: "Billing address",
                          isBillingAddress: true,
                          addressSetter: _billingAddressSetter,
                          isSameAddress: (addressState
                                  is BillingAndHomeAddressSame ||
                              addressState is BillingAddressAdditionSuccess),
                          addressList:
                              addressState is BillingAddressAdditionSuccess
                                  ? addressState.address
                                  : null,
                          isReturnValue: _isValidForm,
                          validateData: _validateData,
                          toggleSameAsCheckBox: (value) {
                            isHomeAndBillingAddressSame = value ?? false;
                            context
                                .read<BillingandhomeaddressCubit>()
                                .toggleIsSameAddress(
                                  value ?? false,
                                );
                          },
                          invalidFormSetter: (value) =>
                              invalidFormSetter(value, 1),
                        );
                      },
                    ),
                    //! dob section
                    const SizedBox(height: 25),
                    NewRequestDOBSection(
                        dobSetter: dobSetter, returnData: _isValidForm),

                    //! gender
                    const SizedBox(height: 25),
                    NewRequestGenderSection(
                      returnValue: !_isChildIsInvalid,
                      valueSetter: genderSetter,
                      addUsCoreSection: true,
                    ),

                    //! communication
                    const SizedBox(height: 25),
                    CommunicationLanguageSection(
                      valueSetter: communicationLanguageSetter,
                    ),
                    //! telecom
                    const SizedBox(height: 25),
                    CommunicationSection(
                      communicationSetter: teleCommunicationSetter,
                      returnValue: _isValidForm,
                      invalidFormSetter: (value) => invalidFormSetter(value, 6),
                    ),

                    const SizedBox(height: 25),

                    Align(
                      alignment: Alignment.center,
                      child: SubmitButton(
                        onPressed: () async {
                          setState(() {
                            _validateData = true;
                          });
                          if (_formkey.currentState?.validate() == true) {
                            setState(() {
                              _isValidForm = true;
                            });
                            if (!_isChildIsInvalid) {
                              await showToast(
                                context,
                                'Patient form is filled out!',
                                backgroundColor: Colors.green,
                              );
                              makePatientProfile();
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
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
