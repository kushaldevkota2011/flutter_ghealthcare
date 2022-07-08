// OTC Medication prescribed

import 'package:dme_pao/dme_pao.dart';
import 'package:fhir/r5.dart';
import 'package:flutter/material.dart';

import 'widgets.dart';

class EncounterOTCMedicationPrescribedSection extends StatefulWidget {
  const EncounterOTCMedicationPrescribedSection(
      {Key? key, this.returnValue = false, this.valueSetter})
      : super(key: key);
  final ValueSetter<RMedicationRequest>? valueSetter;
  final bool returnValue;

  @override
  State<EncounterOTCMedicationPrescribedSection> createState() =>
      _EncounterOTCMedicationPrescribedSectionState();
}

class _EncounterOTCMedicationPrescribedSectionState
    extends State<EncounterOTCMedicationPrescribedSection> {
  List<Coding> medicationCoding = [];

  @override
  Widget build(BuildContext context) {
    if (widget.returnValue &&
        widget.valueSetter != null &&
        medicationCoding.isNotEmpty) {
      widget.valueSetter!(_makeFakeData());
    }
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
          ),
        ],
        sectionName: 'OTC Medication Prescribed',
      );
    });
  }

  medicationValueSetter(Coding coding) {
    debugPrint(coding.toString());
    setState(() {
      medicationCoding.add(coding);
    });
  }

  _makeFakeData() {
    return RMedicationRequest.simplified(
      medicationRequestStatus: MedicationRequestStatus.completed,
      medicationRequestIntent: MedicationRequestIntent.instance_order,
      medication: MedicationRequestMedication(
        codeableConcept: CodeableConcept(coding: medicationCoding),
      ),
      authoredOn: FhirDateTime(
        DateTime.now().toUtc().toIso8601String(),
      ),
      subject: Reference(
        type: FhirUri("Patient"),
        identifier: Identifier(
            use: IdentifierUse.official,
            value: "a3f5bd53-4962-421a-9ce5-3e235c0c1bc7"),
      ),
      requester: Reference(
        type: FhirUri("Practitioner"),
        identifier: Identifier(
            use: IdentifierUse.official,
            value: "ac7a9bf2-c15b-4b02-a155-cd5b6fd671f1"),
      ),
    );
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
