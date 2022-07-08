import 'package:flutter/material.dart';
import 'package:raidon_fhir/src/features/new_requests/ui/widgets/form_section_layout.dart';

class EncounterClinicalNoteSection extends StatelessWidget {
  const EncounterClinicalNoteSection({
    Key? key,
    this.valueSetter,
  }) : super(key: key);
  final ValueSetter<String>? valueSetter;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => FormSectionLayout(
        childern: [
          Material(
            child: TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Clinical Notes',
              ),
              onChanged: returnValue,
              keyboardType: TextInputType.multiline,
              maxLines: 4,
            ),
          ),
        ],
        sectionName: 'Clinical Note',
      ),
    );
  }

  returnValue(String? value) {
    if (valueSetter != null && value != null) {
      valueSetter!(value);
    }
  }
}
