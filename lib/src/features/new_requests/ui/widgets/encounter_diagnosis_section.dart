import 'package:fhir/r5.dart';
import 'package:flutter/material.dart';

import '../../../../core/core.dart';
import 'widgets.dart';

class EncounterDiagnosisSection extends StatelessWidget {
  const EncounterDiagnosisSection({
    Key? key,
    this.valueSetter,
    this.returnData = false,
  }) : super(key: key);
  final ValueSetter<List<EncounterDiagnosis>>? valueSetter;
  final bool returnData;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return FormSectionLayout(
          childern: [
            ColumDropdownFormField(
              lable: 'Use Info',
              onChange: (value) {},
              values: diagnosisRole.values.toList(),
              maxWidth: 200,
              minWidth: 100,
            ),
            // http://build.fhir.org/ig/HL7/US-Core/ValueSet-us-core-condition-code.html
            const EncounterConditionSection(),
          ],
          sectionName: 'Diagnosis',
        );
      },
    );
  }
}
