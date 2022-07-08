import 'package:flutter/material.dart';
import 'package:raidon_fhir/src/core/convertors/convertors.dart';
import 'package:raidon_fhir/src/core/ui/colum_drop_down_form_field.dart';
import 'package:raidon_fhir/src/core/value_set/value_set.dart';
import 'package:raidon_fhir/src/features/new_requests/ui/widgets/form_section_layout.dart';

class MaritalStatusSection extends StatefulWidget {
  const MaritalStatusSection(
      {Key? key, this.maritialSetter, this.returnValue = false})
      : super(key: key);
  final ValueSetter<PatientMaritalStatus?>? maritialSetter;
  final bool returnValue;

  @override
  State<MaritalStatusSection> createState() => _MaritalStatusSectionState();
}

class _MaritalStatusSectionState extends State<MaritalStatusSection> {
  String? status;
  PatientMaritalStatus? maritalStatus;
  @override
  Widget build(BuildContext context) {
    if (widget.maritialSetter != null && widget.returnValue) {
      widget.maritialSetter!(maritalStatus);
    }
    return LayoutBuilder(
      builder: ((context, constraints) {
        //! required
        return FormSectionLayout(
          sectionName: 'Maritial Status',
          childern: [
            ColumDropdownFormField(
              lable: 'Select Maritial Status',
              onChange: (value) {
                if (value != null) {
                  status = value;
                  maritalStatus = textToMaritialStatus(value);
                }
              },
              values: maritalStatusList,
              maxWidth: constraints.maxWidth * 0.2,
              minWidth: 172,
            )
          ],
        );
      }),
    );
  }
}
