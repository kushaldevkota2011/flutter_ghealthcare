import 'package:flutter/material.dart';
import 'package:raidon_fhir/src/core/ui/colum_drop_down_form_field.dart';
import 'package:raidon_fhir/src/core/ui/column_form_field.dart';
import 'package:raidon_fhir/src/core/value_set/value_set.dart';
import 'package:raidon_fhir/src/features/new_requests/ui/widgets/form_section_layout.dart';

class EncounterConditionSection extends StatelessWidget {
  const EncounterConditionSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return FormSectionLayout(
          sectionName: 'Condition *',
          color: Colors.grey,
          childern: [
            //! clinical status
            ColumDropdownFormField(
              lable: 'Clinical Status',
              onChange: (value) {},
              values: conditionClinical.values.toList(),
              maxWidth: 100,
              minWidth: 100,
            ),

            //! verification status
            ColumDropdownFormField(
              lable: 'Verification Status',
              onChange: (value) {},
              values: conditionVerStatus.values.toList(),
              maxWidth: 150,
              minWidth: 150,
            ),

            //! category
            ColumDropdownFormField(
              lable: 'Condition Category',
              onChange: (value) {},
              values: conditionCategory.values.toList(),
              maxWidth: 200,
              minWidth: 150,
            ),

            //! severity
            ColumDropdownFormField(
              lable: 'Severity',
              onChange: (value) {},
              values: conditionSevirity.values.toList(),
              maxWidth: 150,
              minWidth: 150,
            ),
            //! code
            ColumnFormField(
              lable: 'Code',
              maxWidth: constraints.maxWidth * 0.1,
              minWidth: 150,
            ),

            //! bodySite
            ColumnFormField(
              lable: 'Body Site',
              maxWidth: constraints.maxWidth * 0.1,
              minWidth: 150,
            ),
          ],
        );
      },
    );
  }
}
