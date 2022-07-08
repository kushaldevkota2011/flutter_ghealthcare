import 'package:flutter/material.dart';
import 'package:raidon_fhir/src/core/value_set/language.dart';

import '../../../../core/ui/auto_complete_column_widget.dart';
import 'form_section_layout.dart';

class CommunicationLanguageSection extends StatelessWidget {
  const CommunicationLanguageSection({
    Key? key,
    this.returnValue = false,
    this.valueSetter,
  }) : super(key: key);
  final bool returnValue;
  final ValueSetter<String>? valueSetter;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return FormSectionLayout(
        sectionName: 'Communication Language',
        childern: [
          AutoCompleteColumnWidget(
            autocompleteData: languages,
            onSelected: (value) {
              if (valueSetter != null) {
                valueSetter!(value);
              }
            },
            lable: 'Select Preffered language*',
            maxWidht: constraints.maxWidth * 0.2,
            minWidth: 150,
          )
        ],
      );
    });
  }
}
