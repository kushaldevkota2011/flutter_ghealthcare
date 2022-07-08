import 'package:flutter/material.dart';

import '../../../../core/value_set/value_set.dart';
import '../../../../core/ui/auto_complete_column_widget.dart';
import '../../../../core/ui/time_peroid_selction_widget.dart';
import 'form_section_layout.dart';

class QualificationSection extends StatefulWidget {
  const QualificationSection({Key? key}) : super(key: key);

  @override
  State<QualificationSection> createState() => _QualificationSectionState();
}

class _QualificationSectionState extends State<QualificationSection> {
  final _fromDateController = TextEditingController();
  final _toDateController = TextEditingController();

  @override
  void dispose() {
    _fromDateController.dispose();
    _toDateController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return FormSectionLayout(
        sectionName: 'Qualtification',
        childern: [
          AutoCompleteColumnWidget(
            autocompleteData: qualificationCode,
            lable: 'Select Qualitification*',
            maxWidht: constraints.maxWidth * 0.2,
            minWidth: 150,
          ),
          const TimePeroidSelectionWidget(),
        ],
      );
    });
  }
}
