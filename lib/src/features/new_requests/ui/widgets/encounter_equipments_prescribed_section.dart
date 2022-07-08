import 'package:dme_pao/dme_pao.dart';
import 'package:fhir/r5.dart';
import 'package:flutter/material.dart';

import '../../../../core/core.dart';
import 'widgets.dart';

class EncounterEquipmentPrescribedSection extends StatelessWidget {
  const EncounterEquipmentPrescribedSection(
      {Key? key, this.valueSetter, this.returnValue = false})
      : super(key: key);
  final ValueSetter<RDeviceRequest>? valueSetter;
  final bool returnValue;

  @override
  Widget build(BuildContext context) {
    if (returnValue && valueSetter != null) {
      valueSetter!(_makeFakeData());
    }
    return LayoutBuilder(builder: (context, constraints) {
      return FormSectionLayout(
        childern: [
          ColumnFormField(
            lable: 'Equipment',
            validator: (value) {
              if (value == null) {
                return "Enter valida data";
              }
              return null;
            },
          ),
          Card(
            child: TextButton(
              onPressed: () {},
              child: const Text('Add new'),
            ),
          ),
        ],
        sectionName: 'Equipements Prescribed',
      );
    });
  }

  _makeFakeData() {
    return RDeviceRequest.simplified(
      code: DeviceRequested(
        codeableConcept: CodeableConcept(
          coding: [
            Coding(
              code: Code('156009'),
              system: FhirUri('http://snomed.info/sct'),
              display: 'Spine board',
            ),
            Coding(
              code: Code('793009'),
              system: FhirUri('http://snomed.info/sct'),
              display: 'Mechanical power press',
            ),
          ],
        ),
      ),
      requestIntent: RequestIntent.directive,
      subject: Reference(
        reference: 'Patient/a3f5bd53-4962-421a-9ce5-3e235c0c1bc7',
      ),
      requester: Reference(
        reference: 'Practitioner/ac7a9bf2-c15b-4b02-a155-cd5b6fd671f1',
      ),
    );
  }
}
