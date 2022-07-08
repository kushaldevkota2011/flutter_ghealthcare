import 'package:flutter/material.dart';

import '../../../../core/core.dart';
import '../../new_request.dart';

class RFARequestedTreatmentSection extends StatelessWidget {
  const RFARequestedTreatmentSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return FormSectionLayout(
        childern: [
          const Text(
            'List each specific requested medical services, goods, or iteams'
            ' in the below space or indicate the specific page number(s)'
            ' of the attached medical report on which the requested treatment'
            ' can be found. Up to five (5) procedures may be entered; list'
            ' additional requestes on a separate sheet if the space below is'
            ' insufficient',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: Color(0xff333333),
            ),
          ),
          ColumnFormField(
            lable: 'Requesting Physician Signature',
            maxWidth: constraints.maxWidth * 0.47,
          ),
          ColumnDatePickerWidget(
            lable: 'Date',
            maxWidth: constraints.maxWidth * 0.47,
          )
        ],
        sectionName:
            'Requested Treatment (see instructions for guidance; attach additional pages if necessary)',
      );
    });
  }
}
