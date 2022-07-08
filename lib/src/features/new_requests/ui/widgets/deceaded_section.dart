import 'package:flutter/material.dart';
import 'package:raidon_fhir/src/core/ui/colum_date_picker_widget.dart';
import 'package:raidon_fhir/src/features/new_requests/ui/widgets/form_section_layout.dart';

class DeceasedSection extends StatefulWidget {
  const DeceasedSection({Key? key}) : super(key: key);

  @override
  State<DeceasedSection> createState() => _DeceasedSectionState();
}

class _DeceasedSectionState extends State<DeceasedSection> {
  bool _isDeceased = false;
  final _dateController = TextEditingController();

  @override
  void dispose() {
    _dateController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return FormSectionLayout(
        sectionName: 'Deceased',
        childern: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Is Deceased',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              Switch.adaptive(
                value: _isDeceased,
                onChanged: (_) {
                  setState(
                    () {
                      _isDeceased = !_isDeceased;
                    },
                  );
                },
              ),
            ],
          ),
          Visibility(
            child: ColumnDatePickerWidget(
              lable: 'Deceased Date',
              controller: _dateController,
              maxWidth: constraints.maxWidth * 0.1,
              minWidth: 100,
            ),
            visible: _isDeceased,
          )
        ],
      );
    });
  }
}
