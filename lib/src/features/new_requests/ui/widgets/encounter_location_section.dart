import 'package:flutter/material.dart';

import '../../../../core/core.dart';
import 'form_section_layout.dart';

class EncounterLocationSection extends StatelessWidget {
  const EncounterLocationSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return FormSectionLayout(
          childern: [
            //! location status
            ColumDropdownFormField(
              lable: 'Location Status',
              onChange: (value) {},
              values: encounterLocationStatus.values.toList(),
              minWidth: 100,
              maxWidth: constraints.maxWidth * 0.2,
            ),

            //! location reference

            //! physical type
            ColumDropdownFormField(
              lable: 'Location Type',
              onChange: (value) {},
              values: locationPhysicalType.values.toList(),
              maxWidth: 150,
            ),

            //! period
            const FormSectionLayout(
              childern: [
                TimePeroidSelectionWidget(),
                ColumnTimePickerWidget(
                  lable: 'From Time',
                  maxWidth: 100,
                ),
                ColumnTimePickerWidget(
                  lable: 'To Time',
                  maxWidth: 100,
                ),
              ],
              color: Colors.grey,
              sectionName: 'Period',
              message:
                  'Time period during which the patient was present at the location',
            ),
          ],
          sectionName: 'Location',
          message: '	List of locations where the patient has been',
        );
      },
    );
  }
}
