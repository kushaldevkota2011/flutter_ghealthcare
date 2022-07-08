import 'package:fhir/r5.dart';
import 'package:fhir_us_core_extension/fhir_us_core_extension.dart';
import 'package:flutter/material.dart';

import '../../../../core/convertors/convertors.dart';
import '../../../../core/ui/colum_drop_down_form_field.dart';
import '../../../../core/value_set/gender.dart';
import 'form_section_layout.dart';
import '../../../../core/extensions/extensions.dart';

class NewRequestGenderSection extends StatefulWidget {
  const NewRequestGenderSection({
    Key? key,
    this.valueSetter,
    this.returnValue = false,
    this.gender,
    this.addUsCoreSection = false,
  }) : super(key: key);

  final Function? valueSetter;
  final bool returnValue;
  final PatientGender? gender;
  final bool addUsCoreSection;

  @override
  State<NewRequestGenderSection> createState() =>
      _NewRequestGenderSectionState();
}

class _NewRequestGenderSectionState extends State<NewRequestGenderSection> {
  PatientUsCoreBirthSex? _birthSex;
  PatientUsCoreGenderIdentity? _genderIdentity;
  PatientUsCoreEthnicity? _ethnicity;
  PatientUsCoreRace? _race;
  PatientSexualOrientation? _sexualOrientation;
  PatientGender? _gender;

  @override
  Widget build(BuildContext context) {
    if (widget.returnValue && widget.valueSetter != null && _gender != null) {
      widget.valueSetter!(
        _gender,
        _birthSex,
        _sexualOrientation,
        _genderIdentity,
        _race,
        _ethnicity,
      );
    }
    return LayoutBuilder(builder: (context, constraints) {
      return FormSectionLayout(
        sectionName: 'Gender',
        childern: !widget.addUsCoreSection
            ? [
                ColumDropdownFormField(
                  lable: 'Gender*',
                  onChange: (value) {
                    if (value != '--select--') {
                      _gender = textToGender(value!);
                    }
                  },
                  validator: (value) {
                    if (value == '--select--') {
                      return "Select values";
                    }
                    return null;
                  },
                  currentValue: widget.gender != null
                      ? widget.gender!
                          .toString()
                          .split('.')
                          .last
                          .replaceBySpaceAndCaptilized
                      : null,
                  values: genderList,
                  maxWidth: constraints.maxWidth * 0.1,
                  minWidth: 115,
                ),
              ]
            : [
                //! gender
                ColumDropdownFormField(
                  lable: 'Gender*',
                  onChange: (value) {
                    if (value != '--select--') {
                      _gender = textToGender(value!);
                    }
                  },
                  validator: (value) {
                    if (value == '--select--') {
                      return "Select values";
                    }
                    return null;
                  },
                  currentValue: widget.gender != null
                      ? widget.gender!
                          .toString()
                          .split('.')
                          .last
                          .replaceBySpaceAndCaptilized
                      : null,
                  values: genderList,
                  maxWidth: constraints.maxWidth * 0.1,
                  minWidth: 115,
                ),

                //! birth sex
                ColumDropdownFormField(
                  lable: 'Birth Sex',
                  onChange: (value) {
                    if (value != '--select--') {
                      _birthSex = textToBirthSex(value!);
                    }
                  },
                  values: birthSex.values.toList(),
                  maxWidth: constraints.maxWidth * 0.1,
                  minWidth: 115,
                ),

                //! sexual orientation
                // ColumDropdownFormField(
                //   lable: 'Sexual Orientation',
                //   onChange: (value) {
                //     if (value != '--select--') {
                //       _sexualOrientation = textToSexualOrientation(value!);
                //     }
                //   },
                //   values: sexualOrientationList,
                //   maxWidth: constraints.maxWidth * 0.1,
                //   minWidth: 115,
                // ),

                //! gender identity
                // ColumDropdownFormField(
                //   lable: 'Gender Identity',
                //   onChange: (value) {
                //     if (value != '--select--') {
                //       _genderIdentity = textToGenderIdentity(value!);
                //     }
                //   },
                //   values: genderIdentityList,
                //   maxWidth: constraints.maxWidth * 0.1,
                //   minWidth: 115,
                // ),

                //! race
                ColumDropdownFormField(
                  lable: 'Race',
                  onChange: (value) {
                    if (value != '--select--') {
                      _race = textToRace(value!);
                      debugPrint(_race.toString());
                    }
                  },
                  values: raceList,
                  maxWidth: constraints.maxWidth * 0.2,
                  minWidth: 115,
                ),

                //! ethinicity
                ColumDropdownFormField(
                  lable: 'Ethinicity',
                  onChange: (value) {
                    if (value != '--select--') {
                      _ethnicity = textToEthinicity(value!);
                      debugPrint(_ethnicity.toString());
                    }
                  },
                  values: ethinicityList,
                  maxWidth: constraints.maxWidth * 0.2,
                  minWidth: 115,
                ),
              ],
      );
    });
  }
}
