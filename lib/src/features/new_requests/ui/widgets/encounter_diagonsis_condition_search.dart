// OTC Medication prescribed

import 'package:fhir/r5.dart';
import 'package:flutter/material.dart';

import 'widgets.dart';

class EncounterDiagonsisConditionSearch extends StatefulWidget {
  const EncounterDiagonsisConditionSearch({
    Key? key,
    this.valueSetter,
  }) : super(key: key);
  final ValueSetter<List<EncounterDiagnosis>>? valueSetter;

  @override
  State<EncounterDiagonsisConditionSearch> createState() =>
      _EncounterDiagonsisConditionSearchState();
}

class _EncounterDiagonsisConditionSearchState
    extends State<EncounterDiagonsisConditionSearch> {
  List<Coding> medicationCoding = [];

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return FormSectionLayout(
        childern: [
          for (var coding in medicationCoding)
            MedicationItemWidget(
              code: coding,
              onCancle: () {
                setState(() {
                  medicationCoding.remove(coding);
                });
              },
            ),
          MedicationAutoComplete(
            valueSetter: medicationValueSetter,
            isConditionSearch: true,
          ),
        ],
        sectionName: "Condition",
      );
    });
  }

  medicationValueSetter(Coding coding) {
    setState(() {
      medicationCoding.add(coding);
    });
    _returnData();
  }

  _returnData() {
    if (widget.valueSetter != null && medicationCoding.isNotEmpty) {
      widget.valueSetter!(_makeReferanceFromCondition());
    }
  }

  _makeReferanceFromCondition() {
    List<EncounterDiagnosis> diagnosis = [];

    for (var coding in medicationCoding) {
      diagnosis.add(
        EncounterDiagnosis(
          condition: Reference(),
          use: CodeableConcept(coding: [coding], text: coding.display),
          rank: PositiveInt(medicationCoding.indexOf(coding) + 1),
        ),
      );
    }

    return diagnosis;
  }
}

class MedicationItemWidget extends StatelessWidget {
  const MedicationItemWidget({Key? key, required this.code, this.onCancle})
      : super(key: key);
  final Coding code;
  final VoidCallback? onCancle;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Card(
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Text(code.display ?? ''),
          ),
        ),
        Positioned(
          right: -8,
          top: -13,
          child: IconButton(
            onPressed: onCancle,
            tooltip: 'Remove',
            icon: const Icon(
              Icons.cancel_outlined,
              color: Colors.red,
              size: 16,
            ),
          ),
        )
      ],
    );
  }
}
