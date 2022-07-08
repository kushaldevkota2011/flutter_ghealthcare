import 'package:flutter/material.dart';

import '../../../../core/core.dart';
import '../../new_request.dart';

class RFAClaimsUROResponseSection extends StatelessWidget {
  const RFAClaimsUROResponseSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return FormSectionLayout(
        childern: [
          const CheckBoxWithTitleWidget(
            value: false,
            title: 'Approved',
          ),
          const CheckBoxWithTitleWidget(
            value: false,
            title: 'Denied Or Modified (See separate decision letter)',
          ),
          const CheckBoxWithTitleWidget(
            value: false,
            title: 'Delay (See separate notification of delay)',
          ),
          const CheckBoxWithTitleWidget(
            value: false,
            title: 'Requested treatment has been previously denied',
          ),
          const CheckBoxWithTitleWidget(
            value: false,
            title:
                'Liablility for treatment is disputed (See separater letter)',
          ),
          ColumnFormField(
            lable: 'Autorization Number (if assigned)',
            maxWidth: constraints.maxWidth * 0.47,
          ),
          ColumnDatePickerWidget(
            lable: 'Date',
            maxWidth: constraints.maxWidth * 0.47,
          ),
          ColumnFormField(
            lable: 'Authorized Agent Name',
            maxWidth: constraints.maxWidth * 0.47,
          ),
          ColumnFormField(
            lable: 'Signature',
            maxWidth: constraints.maxWidth * 0.47,
          ),
          ColumnFormField(
            lable: 'Phone',
            maxWidth: constraints.maxWidth * 0.22,
          ),
          ColumnFormField(
            lable: 'Fax Number',
            maxWidth: constraints.maxWidth * 0.22,
          ),
          ColumnFormField(
            lable: 'E-Mail Address',
            maxWidth: constraints.maxWidth * 0.47,
          ),
          const ColumnFormField(
            lable: 'Comments',
          ),
        ],
        sectionName:
            'Claims Administrator/Utilization Review Organization (URO) Response',
      );
    });
  }
}
