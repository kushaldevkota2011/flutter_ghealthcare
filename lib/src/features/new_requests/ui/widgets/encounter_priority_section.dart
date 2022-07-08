import 'package:flutter/material.dart';
import 'package:raidon_fhir/src/core/value_set/encounter.dart';
import 'package:raidon_fhir/src/core/ui/colum_drop_down_form_field.dart';
import 'package:raidon_fhir/src/features/new_requests/ui/widgets/form_section_layout.dart';

class EncounterPrioritySection extends StatelessWidget {
  const EncounterPrioritySection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: ((context, constraints) {
      return FormSectionLayout(
        sectionName: 'Priority',
        childern: [
          ColumDropdownFormField(
            lable: 'Encounter Priority',
            onChange: (value) {},
            values: priority.values.toList(),
            maxWidth: constraints.maxWidth * 0.1,
            minWidth: 200,
          ),
        ],
      );
    }));
  }
}
