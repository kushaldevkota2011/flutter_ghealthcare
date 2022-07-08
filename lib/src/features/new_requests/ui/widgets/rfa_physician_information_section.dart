import 'package:flutter/material.dart';

import '../../../../core/core.dart';
import '../../new_request.dart';

class RFAPhysicianInformationSection extends StatelessWidget {
  const RFAPhysicianInformationSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return FormSectionLayout(
        childern: [
          const ColumnFormField(
            lable: 'Name',
          ),
          ColumnFormField(
            lable: 'Contact Name',
            maxWidth: constraints.maxWidth * 0.47,
          ),
          ColumnFormField(
            lable: 'Practice Name',
            maxWidth: constraints.maxWidth * 0.47,
          ),
          ColumnFormField(
            lable: 'Address',
            maxWidth: constraints.maxWidth * 0.47,
          ),
          ColumnFormField(
            lable: 'City',
            maxWidth: constraints.maxWidth * 0.22,
          ),
          ColumnFormField(
            lable: 'State',
            maxWidth: constraints.maxWidth * 0.22,
          ),
          ColumnFormField(
            lable: 'Zip Code',
            maxWidth: constraints.maxWidth * 0.22,
          ),
          ColumnFormField(
            lable: 'Phone',
            maxWidth: constraints.maxWidth * 0.22,
          ),
          ColumnFormField(
            lable: 'Fax Number',
            maxWidth: constraints.maxWidth * 0.47,
          ),
          ColumnFormField(
            lable: 'Speciality',
            maxWidth: constraints.maxWidth * 0.47,
          ),
          ColumnFormField(
            lable: 'NPI Number',
            maxWidth: constraints.maxWidth * 0.47,
          ),
          const ColumnFormField(
            lable: 'E-mail Address',
          ),
        ],
        sectionName: 'Requesting Physician Information',
      );
    });
  }
}
