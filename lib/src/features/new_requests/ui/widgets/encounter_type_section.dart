import 'package:fhir/r5.dart';
import 'package:flutter/material.dart';

import '../../../../core/core.dart';
import 'form_section_layout.dart';

class EncounterTypeSection extends StatelessWidget {
  const EncounterTypeSection({Key? key, this.valueSetter}) : super(key: key);
  final ValueSetter<CodeableConcept>? valueSetter;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: ((context, constraints) {
        return FormSectionLayout(
          sectionName: 'Encounter Type',
          childern: [
            ColumDropdownFormField(
              lable: 'Type*',
              validator: (value) {
                if (value == null || value == '--select--') {
                  return "Please Select One Value";
                }
                return null;
              },
              onChange: (value) {
                if (value != '--select--') {
                  final encounterType = textToEncounterType(value!);
                  final concept =
                      codeableConceptFromEncounterType[encounterType];
                  returnValue(concept);
                }
              },
              values: encounterTypeList,
              maxWidth: constraints.maxWidth * 0.2,
              minWidth: 200,
            )
          ],
        );
      }),
    );
  }

  returnValue(CodeableConcept? concept) {
    if (concept != null && valueSetter != null) {
      valueSetter!(concept);
    }
  }
}
