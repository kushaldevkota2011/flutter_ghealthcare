import 'package:flutter/material.dart';

import '../../../../core/value_set/encounter.dart';
import '../../../../core/ui/colum_drop_down_form_field.dart';
import '../../../../core/ui/time_peroid_selction_widget.dart';
import 'form_section_layout.dart';

class EncounterStatusSection extends StatelessWidget {
  const EncounterStatusSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: ((context, constraints) {
        return FormSectionLayout(
          sectionName: 'About Encounter',
          childern: [
            ColumDropdownFormField(
              lable: 'Status*',
              maxWidth: constraints.maxWidth * 0.1,
              minWidth: 155,
              onChange: (value) {},
              values: encounterStatus.values.toList(),
            ),
            ColumDropdownFormField(
              lable: 'Status History',
              maxWidth: constraints.maxWidth * 0.1,
              minWidth: 155,
              onChange: (value) {},
              values: encounterStatus.values.toList(),
            ),
            const TimePeroidSelectionWidget(),
          ],
        );
      }),
    );
  }
}
