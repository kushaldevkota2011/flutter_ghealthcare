import 'package:flutter/material.dart';

import '../../../../core/core.dart';
import 'form_section_layout.dart';

class EncounterTimePeriodSection extends StatelessWidget {
  const EncounterTimePeriodSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const FormSectionLayout(
      childern: [
        TimePeroidSelectionWidget(),
        ColumnTimePickerWidget(
          lable: 'From Time',
          maxWidth: 100,
          minWidth: 75,
        ),
        ColumnTimePickerWidget(
          lable: 'To Time',
          maxWidth: 100,
          minWidth: 75,
        ),
      ],
      sectionName: 'Time Period',
      message: 'Start and end time of the encounter',
    );
  }
}
