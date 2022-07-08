// OTC Medication prescribed

import 'package:dme_pao/dme_pao.dart';
import 'package:fhir/r5.dart';
import 'package:flutter/material.dart';

import 'widgets.dart';

class EncounterDeviceMedicationPrescribedSection extends StatefulWidget {
  const EncounterDeviceMedicationPrescribedSection({
    Key? key,
    this.medicationSetter,
    this.deviceSetter,
    this.isDeviceSearch = true,
    required this.title,
  }) : super(key: key);
  final ValueSetter<RMedicationRequest>? medicationSetter;
  final ValueSetter<RDeviceRequest>? deviceSetter;
  final bool isDeviceSearch;
  final String title;

  @override
  State<EncounterDeviceMedicationPrescribedSection> createState() =>
      _EncounterDeviceMedicationPrescribedSectionState();
}

class _EncounterDeviceMedicationPrescribedSectionState
    extends State<EncounterDeviceMedicationPrescribedSection> {
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
            isDeviceSearch: widget.isDeviceSearch,
          ),
        ],
        sectionName: widget.title,
      );
    });
  }

  medicationValueSetter(Coding coding) {
    setState(() {
      medicationCoding.add(coding);
    });
    returnData();
  }

  returnData() {
    if (medicationCoding.isNotEmpty) {
      if (widget.isDeviceSearch && widget.deviceSetter != null) {
        widget.deviceSetter!(_makeDeviceData());
      } else if (widget.medicationSetter != null) {
        widget.medicationSetter!(_makeMedicationData());
      }
    }
  }

  RDeviceRequest _makeDeviceData() {
    return RDeviceRequest.simplified(
      code: DeviceRequested(
        codeableConcept: CodeableConcept(
          coding: medicationCoding,
        ),
      ),
      authoredOn: FhirDateTime(
        DateTime.now().toUtc().toIso8601String(),
      ),
      requestIntent: RequestIntent.order,
      subject: Reference(
        reference: 'Patient/a3f5bd53-4962-421a-9ce5-3e235c0c1bc7',
      ),
      requester: Reference(
        reference: 'Practitioner/ac7a9bf2-c15b-4b02-a155-cd5b6fd671f1',
      ),
    );
  }

  RMedicationRequest _makeMedicationData() {
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

// class MedicationItemWidget extends StatelessWidget {
//   const MedicationItemWidget({Key? key, required this.code, this.onCancle})
//       : super(key: key);
//   final Coding code;
//   final VoidCallback? onCancle;

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         Card(
//           child: Padding(
//             padding: const EdgeInsets.all(8),
//             child: Text(code.display ?? ''),
//           ),
//         ),
//         Positioned(
//           right: -8,
//           top: -13,
//           child: IconButton(
//             onPressed: onCancle,
//             tooltip: 'Remove',
//             icon: const Icon(
//               Icons.cancel_outlined,
//               color: Colors.red,
//               size: 16,
//             ),
//           ),
//         )
//       ],
//     );
//   }
// }
