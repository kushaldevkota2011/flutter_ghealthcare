import 'package:fhir/r5.dart';
import 'package:flutter/material.dart';
import 'package:raidon_fhir/src/features/new_requests/ui/widgets/widgets.dart';

import '../../../../core/core.dart';

class EncounterHospitilizationSection extends StatelessWidget {
  const EncounterHospitilizationSection({Key? key, this.valueSetter})
      : super(key: key);
  final ValueSetter<CodeableConcept>? valueSetter;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return FormSectionLayout(
          sectionName: 'Hospitilization',
          message: 'Details about the admission to a healthcare service',
          childern: [
            //! discharge disposition

            ColumDropdownFormField(
              lable: 'Discharge Disposition',
              isEllipsis: true,
              onChange: (value) {
                if (value != null || value != '--select--') {
                  final cc = CodeableConcept(
                    coding: [
                      Coding(
                        system: FhirUri(
                          'http://hl7.org/fhir/us/core/ValueSet/us-core-discharge-disposition',
                        ),
                        display: value,
                        code: Code(
                          dischargeDesposition.entries
                              .firstWhere((element) => element.value == value)
                              .key,
                        ),
                      ),
                    ],
                  );

                  if (valueSetter != null) valueSetter!(cc);
                }
              },
              values: dischargeDesposition.values.toList(),
            )
          ],
        );
      },
    );
  }
}
