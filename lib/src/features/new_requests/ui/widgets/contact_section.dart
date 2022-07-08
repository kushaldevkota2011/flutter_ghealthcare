import 'package:fhir/r5.dart';
import 'package:flutter/material.dart';

import '../../../../core/core.dart';
import '../new_request_ui.dart';

class ContactSection extends StatefulWidget {
  const ContactSection({
    Key? key,
    this.contactSetter,
    this.returnValue = false,
    this.invalidFormSetter,
  }) : super(key: key);
  final bool returnValue;
  final ValueSetter<List<PatientContact>?>? contactSetter;
  final ValueSetter<bool>? invalidFormSetter;

  @override
  State<ContactSection> createState() => _ContactSectionState();
}

class _ContactSectionState extends State<ContactSection> {
  HumanName? _name;
  Address? _address;
  Code? _gender;
  List<ContactPoint>? _telecom;
  Map<String, String>? _relationShip;
  final List<PatientContact> _contactList = [];

  PatientContact makePatientContact() {
    return PatientContact(
      address: _address,
      name: _name,
      gender: _gender,
      telecom: _telecom,
      relationship: _relationShip != null
          ? [
              CodeableConcept(
                coding: [
                  Coding(
                      code: Code(_relationShip!.keys.first),
                      display: _relationShip!.values.first,
                      system: FhirUri(
                          'http://hl7.org/fhir/R4/valueset-patient-contactrelationship.html'),
                      userSelected: Boolean(true))
                ],
              )
            ]
          : null,
    );
  }

  //! name
  void nameSectionSetter(HumanName name) {
    _name = name;
  }

  //! address
  void addressSectionSetter(List<Address> address) {
    _address = address.first;
  }

  @override
  Widget build(BuildContext context) {
    if (widget.returnValue && widget.contactSetter != null) {
      _contactList.add(makePatientContact());
      widget.contactSetter!(_contactList);
    }
    return LayoutBuilder(
      builder: (context, constraints) {
        return FormSectionLayout(
          sectionName: 'Contact',
          displaySectionName: false,
          childern: [
            ColumDropdownFormField(
              lable: 'Relationship',
              onChange: (value) {
                if (value != '--select--') {
                  _relationShip = {
                    'C': patientContactRelationship.values
                        .firstWhere((element) => element == value)
                  };
                } else {
                  _relationShip = null;
                }
              },
              values: patientContactRelationship.values.toList(),
              maxWidth: constraints.maxWidth * 0.2,
              minWidth: 186,
            ),
            ColumDropdownFormField(
              lable: 'Gender',
              onChange: (value) {
                if (value != '--select--') {
                  _gender = Code(value!.toLowerCase());
                } else {
                  _gender = null;
                }
              },
              values: patientContactGenderList,
              maxWidth: constraints.maxWidth * 0.2,
              minWidth: 186,
            ),
            NewRequestNameSection(
              color: Colors.grey,
              returnData: widget.returnValue,
              addValidator: widget.returnValue,
              nameSetter: nameSectionSetter,
              validatedIfEmpty: false,
            ),
            NewRequestAddressSection(
              color: Colors.grey,
              isReturnValue: widget.returnValue,
              addressSetter: addressSectionSetter,
              validateData: widget.returnValue,
              invalidFormSetter: widget.invalidFormSetter,
            ),
            CommunicationSection(
              color: Colors.grey,
              returnValue: widget.returnValue,
              communicationSetter: (value) {
                _telecom = value;
              },
              invalidFormSetter: widget.invalidFormSetter,
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                'Add New Contact',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              style: TextButton.styleFrom(
                backgroundColor: Colors.green,
              ),
            )
          ],
        );
      },
    );
  }
}
