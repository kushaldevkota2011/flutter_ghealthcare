import 'package:fhir/r5.dart';
import 'package:flutter/material.dart';
import 'package:raidon_fhir/src/core/core.dart';

import 'form_section_layout.dart';

class EncounterClassSection extends StatefulWidget {
  const EncounterClassSection({
    Key? key,
    this.valueSetter,
  }) : super(key: key);
  final ValueSetter<Coding>? valueSetter;

  @override
  State<EncounterClassSection> createState() => _EncounterClassSectionState();
}

class _EncounterClassSectionState extends State<EncounterClassSection> {
  Coding? coding;
  @override
  Widget build(BuildContext context) {
    _returnData();
    return LayoutBuilder(
      builder: ((context, constraints) {
        return FormSectionLayout(
          sectionName: 'Encounter Class',
          childern: [
            ColumDropdownFormField(
              lable: 'Code/Class*',
              validator: (value) {
                if (value == null || value == '--select--') {
                  return "Please selct value";
                } else {
                  return null;
                }
              },
              onChange: (value) {
                if (value != null && value != '--select--') {
                  final encounter = textToEncounterClass(value);
                  coding = encounterClassToCoding[encounter];
                  _returnData();
                }
              },
              values: encounterClassList,
              maxWidth: constraints.maxWidth * 0.1,
              minWidth: 205,
            ),
          ],
        );
      }),
    );
  }

  void _returnData() {
    if (widget.valueSetter != null && coding != null) {
      widget.valueSetter!(coding!);
    }
  }
}
